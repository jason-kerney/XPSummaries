$dirs = Get-ChildItem -Directory -Filter "xp_*"

foreach ($d in $dirs) {
    booklisp.cmd "$d/_main.md" "x$d.md"
}