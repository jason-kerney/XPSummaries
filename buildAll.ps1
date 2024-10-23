$dirs = Get-ChildItem -Directory -Filter "xp_*"

foreach ($d in $dirs) {
   Write-Host ".. Building $d.md"
   node.exe "./node_modules/doculisp/dist/index.js" "$d/_main.dlisp" "$d.md"
}

Write-Host ".. Building README.md"
node.exe "./node_modules/doculisp/dist/index.js" "./readme/_main.dlisp" "./README.md"

Write-Host ".. Building Images.md"
node.exe "./node_modules/doculisp/dist/index.js" "./images/_main.dlisp" "./Images.md"