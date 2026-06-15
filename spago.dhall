{ name = "purescript-lua-partial"
, dependencies = [] : List Text
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, backend =
    ''
    pslua \
    --foreign-path . \
    --ps-output output \
    --lua-output-file dist/Partial.lua \
    --entry Partial
    ''
}
