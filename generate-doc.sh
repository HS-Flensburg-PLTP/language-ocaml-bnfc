set -euxo pipefail

bnfc --latex ocaml.cf
pdflatex ocaml.tex
