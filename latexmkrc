@default_files = ('main.tex');

# set the TeX command options for latex/pdflatex/xelatex/lualatex
set_tex_cmds('-shell-escape  -interaction=nonstopmode %O %S');
# $aux_dir = build;
$synctex    = 1;
$force_mode = 1;
$max_repeat = 20;

# Use XeLaTeX -> XDV -> xdvipdfmx
$pdf_mode   = 5;

# Make xdvipdfmx behave like your working manual command
# (note: order of %O / -o %D / %S matters)
# $xdvipdfmx  = 'xdvipdfmx -E %O -o %D %S';
