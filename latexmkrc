@default_files = ('main.tex');

# $aux_dir = "build";
# $out_dir = "out";

set_tex_cmds('--interaction=nonstopmode %O %S');

$force_mode = 1;
$pdf_mode = 5;
