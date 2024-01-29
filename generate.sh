bnfc --haskell -d -o src -m ocaml.cf
happy --ghc --coerce --array --info src/Ocaml/Par.y
cd src
make
cd ..
