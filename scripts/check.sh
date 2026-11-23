#!/usr/bin/env bash
# Pre-commit gate for this repository.
#
#   PRIVATE_TERMS_FILE=/path/outside/this/repository bash scripts/check.sh
#   bash scripts/check.sh --no-private-terms      (automated runs only)
#
# Four gates, run in order:
#   shape    every skill follows the open Agent Skills layout and the
#            conventions in CONTRIBUTING.md
#   residue  no calendar dates, ticket numbers, commit ids or addresses left
#            over from the project a lesson came from
#   hidden   no instructions a human reader cannot see: invisible characters
#            or comments
#   terms    nothing from the contributor's private deny-list, which is kept
#            outside the repository and located by PRIVATE_TERMS_FILE
#
# Exit status is 0 only when no gate reports a problem.

# Resolve the deny-list path before changing directory, so that a relative
# path means what the caller meant.
terms_file=${PRIVATE_TERMS_FILE:-}
case "$terms_file" in
  '' | /*) ;;
  *) terms_file="$PWD/$terms_file" ;;
esac

cd "$(dirname "$0")/.." || exit 2
repo_root=$(pwd -P)

PROSE="skills lessons FRAMEWORK.md README.md CONTRIBUTING.md AGENTS.md SECURITY.md"
SPEC_KEYS=" name description license compatibility metadata allowed-tools "
WORD_ADVISORY=450

skip_terms=no
[ "${1:-}" = "--no-private-terms" ] && skip_terms=yes

problems=0
advisories=0
problem()  { echo "FAIL  $*"; problems=$((problems + 1)); }
advisory() { echo "warn  $*"; advisories=$((advisories + 1)); }
indent()   { while IFS= read -r line; do echo "        $line"; done; }

# The block between the opening "---" on line 1 and the next "---".
frontmatter() { sed -n '2,/^---$/p' "$1" | sed '$d'; }
field()       { frontmatter "$1" | sed -n "s/^$2:[[:space:]]*//p" | sed -n 1p; }

gate_shape() {
  for path in skills/*/; do
    skill=${path%/}
    skill=${skill#skills/}
    doc="skills/$skill/SKILL.md"

    if [ ! -f "$doc" ]; then
      problem "$skill: SKILL.md is missing"
      continue
    fi
    if [ "$(sed -n 1p "$doc")" != "---" ]; then
      problem "$skill: frontmatter must start on line 1"
      continue
    fi

    name=$(field "$doc" name)
    desc=$(field "$doc" description)

    [ "$name" = "$skill" ] ||
      problem "$skill: name in frontmatter is '$name'; it must equal the directory name"
    echo "$skill" | grep -Eq '^[a-z0-9]+(-[a-z0-9]+)*$' ||
      problem "$skill: name must be lowercase letters, digits and single hyphens"
    [ "${#skill}" -le 64 ] ||
      problem "$skill: name is ${#skill} characters (specification limit 64)"

    if [ -z "$desc" ]; then
      problem "$skill: description is empty"
    else
      [ "${#desc}" -le 1024 ] ||
        problem "$skill: description is ${#desc} characters (specification limit 1024)"
      case "$desc" in
        "Use when"*) problem "$skill: description must first say what the skill is for" ;;
        *". Use when "*) ;;
        *) problem "$skill: description must say when the skill applies ('<purpose>. Use when ...')" ;;
      esac
    fi

    for key in $(frontmatter "$doc" | sed -n 's/^\([A-Za-z][A-Za-z_-]*\):.*/\1/p'); do
      case "$SPEC_KEYS" in
        *" $key "*) ;;
        *) problem "$skill: frontmatter key '$key' is not in the Agent Skills specification" ;;
      esac
    done

    words=$(($(wc -w < "$doc")))
    [ "$words" -le "$WORD_ADVISORY" ] ||
      advisory "$skill: $words words; move the finer rules to reference.md"
  done
}

# A skill states a practice. A date, a ticket number, a commit id or an address
# means a story from one project has been pasted in instead.
residue() {
  found=$(grep -rnE "$2" $PROSE 2>/dev/null | grep -v 'YYYY-MM-DD')
  [ -z "$found" ] && return
  problem "project residue ($1):"
  echo "$found" | indent
}

gate_residue() {
  residue "calendar date"   '\b20[0-9]{2}-[0-9]{2}-[0-9]{2}\b'
  residue "ticket or PR id" '(^|[^&[:alnum:]])#[0-9]{1,6}\b'
  residue "commit id"       '\b[0-9a-f]{7,40}\b.*\b(commit|head|sha|merged)\b|\b(commit|head|sha)\b.*\b[0-9a-f]{7,40}\b'
  residue "email address"   '[[:alnum:]._%+-]+@[[:alnum:].-]+\.[[:alpha:]]{2,}'
}

# A skill is read by agents and reviewed by people. Anything an agent reads but
# a reviewer cannot see is a way to slip in an instruction: characters that
# take up no space, characters that reverse the reading order, and comments
# that are not shown when the page is displayed.
gate_hidden() {
  found=$(find . -type f -not -path './.git/*' \( -name '*.md' -o -name '*.json' -o -name '*.sh' -o -name '*.yml' \) -print0 |
    xargs -0 perl -CSD -ne 'print "$ARGV:$.: invisible character\n" if /[\x{00AD}\x{200B}-\x{200F}\x{202A}-\x{202E}\x{2060}-\x{2064}\x{2066}-\x{2069}\x{FEFF}\x{E0000}-\x{E007F}]/; close ARGV if eof' 2>/dev/null)
  if [ -n "$found" ]; then
    problem "hidden content (invisible characters):"
    echo "$found" | indent
  fi
  found=$(grep -rnE '<!--|-->' --include='*.md' . 2>/dev/null | grep -v '^\./\.git/')
  if [ -n "$found" ]; then
    problem "hidden content (comments that are not displayed):"
    echo "$found" | indent
  fi
}

# The deny-list names the very things that must not be published, so it is kept
# outside the repository, where it cannot be committed, archived or shared
# along with it. PRIVATE_TERMS_FILE gives its path.
#
# One term per line: the names of your own products, features, customers,
# people, hosts and tools. A term is matched as a whole word and without regard
# to case, unless it starts with "=", which makes it case-sensitive (for
# acronyms that are also ordinary words). Every file in the repository is
# searched.
#
# Two exemptions, both for the publisher's own name, which is usually on the
# list: a manifest line that declares the "owner" or "author" (keep each of
# those objects on a single line), and the copyright line of LICENSE.
gate_terms() {
  if [ -f .private-terms ]; then
    problem "a .private-terms file is inside the repository; move it out and set PRIVATE_TERMS_FILE to its new path"
  fi
  if [ -z "$terms_file" ]; then
    if [ "$skip_terms" = yes ]; then
      advisory "PRIVATE_TERMS_FILE is not set; the leak check did not run"
    else
      problem "PRIVATE_TERMS_FILE is not set; the leak check cannot run (see CONTRIBUTING.md)"
    fi
    return
  fi
  if [ ! -f "$terms_file" ]; then
    problem "PRIVATE_TERMS_FILE points to '$terms_file', which is not a file"
    return
  fi
  terms_dir=$(cd "$(dirname "$terms_file")" && pwd -P)
  case "$terms_dir/" in
    "$repo_root"/*)
      problem "the deny-list is inside the repository; keep it somewhere else"
      return
      ;;
  esac
  while IFS= read -r term || [ -n "$term" ]; do
    case "$term" in
      '' | '#'*) continue ;;
      '='*) term=${term#=}; match=-rnwF ;;
      *) match=-rniwF ;;
    esac
    found=$(grep $match --exclude-dir=.git -- "$term" . 2>/dev/null |
      grep -vE '^\./\.claude-plugin/[^:]+:[0-9]+:[[:space:]]*"(owner|author)"[[:space:]]*:' |
      grep -vE '^\./LICENSE:[0-9]+:Copyright ')
    [ -z "$found" ] && continue
    problem "private term '$term':"
    echo "$found" | indent
  done < "$terms_file"
}

gate_shape
gate_residue
gate_hidden
gate_terms

echo
echo "$problems problem(s), $advisories advisory note(s)"
[ "$problems" -eq 0 ]
