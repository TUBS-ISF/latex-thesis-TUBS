@default_files = ('thesis.tex');            # `latexmk` should compile the thesis
$pdf_mode = 1;                              # use pdflatex
$out_dir = './';                            # all the outputs will appear in this directory
$postscript_mode = 0;                       # don't use postscript
$dvi_mode = 0;                              # don't use dvi
$pdflatex = 'pdflatex %O -shell-escape %S'; # enable shell escape
$max_repeat = 12;                           # maximum number of times to run latex
$bibtex_use = 2;                            # enables full BibTeX processing, so that bbl file is treated as regeneratable

$clean_ext .= 'bbl-SAVE-ERROR ist loa lol lop';

# based on https://tex.stackexchange.com/a/44316
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
add_cus_dep('nto', 'nts', 0, 'run_makeglossaries');

sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -q $_[0]";
  }
  else {
    system "makeglossaries $_[0]";
  };
}

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
push @generated_exts, 'nto', 'nts', 'ntsl';
push @generated_exts, 'tcc*', 'slnc', 'wrt';