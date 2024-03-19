set -euxo pipefail

bnfc --haskell -d -p Language -o src -m ocaml.cf
patch src/Language/Ocaml/Lex.x < Lex.x.patch
alex --ghc src/Language/Ocaml/Lex.x
happy --ghc --coerce --array --info src/Language/Ocaml/Par.y
