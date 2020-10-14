{ name = "downloadjs"
, dependencies =
  [ "arraybuffer-types"
  , "console"
  , "effect"
  , "foreign"
  , "psci-support"
  , "web-file"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, license = "MIT"
, repository = "https://github.com/chekoopa/purescript-downloadjs"
}
