@default_files = ('proposal.tex');            # `latexmk` should compile the thesis
$pdf_mode = 1;                              # use pdflatex
$out_dir = './';                            # all the outputs will appear in this directory
$postscript_mode = 0;                       # don't use postscript
$dvi_mode = 0;                              # don't use dvi
$pdflatex = 'pdflatex %O -shell-escape %S'; # enable shell escape
$max_repeat = 12;                           # maximum number of times to run latex
$bibtex_use = 2;                            # enables full BibTeX processing, so that bbl file is treated as regeneratable

$clean_ext .= 'bbl-SAVE-ERROR ist loa lol lop';
