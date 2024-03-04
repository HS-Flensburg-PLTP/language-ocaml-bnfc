set -euxo pipefail

bnfc --haskell -d -o src -m ocaml.cf
patch src/Ocaml/Lex.x < Lex.x.patch
alex --ghc src/Ocaml/Lex.x
happy --ghc --coerce --array --info src/Ocaml/Par.y
