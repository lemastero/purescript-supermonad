{-
- Spago documentation: https://github.com/purescript/spago
- Dhall language tour: https://docs.dhall-lang.org/tutorials/Language-Tour.html
-}
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
