@default_files = ('main.tex');

# $aux_dir = "build";
# $out_dir = "out";

set_tex_cmds('-interaction=nonstopmode %O %S');

# $pdflatex = 'ppdflatex -- -interaction=nonstopmode -shell-escape -synctex=1';
# $pdflatex = 'ppdflatex';
$synctex = 1;
$force_mode = 1;
$pdf_mode = 5;
$max_repeat = 20;
