$root_cache_paths = @(
    ".\build"
    ".\out"
    ".\target"
)
foreach ($path in $root_cache_paths) {
    if (Test-Path $path) {
        Remove-Item $path -Recurse -Force
    }
}

$recurse_cache_paths = @(
    "bin"
    "obj"
    "*.exe"
    "*.user"
    # "*.dll"
    # "*.lib"
    # "*.pyd"
    # "*.a"
    # "*.obj"
    "tempCodeRunnerFile.*"
)
foreach ($path in $recurse_cache_paths) {
    Remove-Item * -Include $path -Recurse -Force
}
