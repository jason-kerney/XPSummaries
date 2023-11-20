$dirs = Get-ChildItem -Directory -Filter "xp_*"

foreach ($d in $dirs) {
    Write-Host ".. Building $d.md"
    booklisp.cmd "$d/_main.md" "$d.md"
}

Write-Host ".. Building README.md"
booklisp.cmd "./readme/_main.md" "README.md"

Write-Host ".. Building Images.md"
booklisp.cmd "./images/_main.md" "Images.md"