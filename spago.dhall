{ name = "purescript-supermonad"
, dependencies = [
  "console",
  "effect",
  "prelude",
  "maybe",
  "either",
  "lists"]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
