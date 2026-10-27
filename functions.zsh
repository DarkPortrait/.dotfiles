# Shell functions, sourced from ~/.zshrc.
# Keep these portable: no aliases/exports here, those live in .zshrc.

# zip all git-tracked .sql files in a directory: zip_sql <directory> [archive-name]
zip_sql() {
  local dir="${1:-}" name="${2:-}" out

  if [ -z "$dir" ]; then
    echo "usage: zip_sql <directory> [archive-name]" >&2
    return 2
  fi

  if [ ! -d "$dir" ]; then
    echo "zip_sql: not a directory: $dir" >&2
    return 1
  fi

  # Default archive name: <directory>_<YYYYMMDD>.zip in the caller's current directory.
  if [ -z "$name" ]; then
    name="$(basename "$(cd "$dir" && pwd)")_$(date +%Y%m%d).zip"
  fi
  case "$name" in
    /*) out="$name" ;;
    *)  out="$PWD/$name" ;;
  esac

  (
    cd "$dir" || exit 1

    if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
      echo "zip_sql: not a git repository: $dir" >&2
      exit 1
    fi

    if [ "$(git ls-files -- '*.sql' | wc -l | tr -d ' ')" = "0" ]; then
      echo "zip_sql: no tracked .sql files in $dir" >&2
      exit 1
    fi

    git ls-files -z -- '*.sql' | xargs -0 zip -q -X "$out"
  )

  local rc=$?
  [ $rc -eq 0 ] && echo "created $out"
  return $rc
}
