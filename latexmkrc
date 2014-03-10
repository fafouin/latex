# paths for ancillary latex and bibtex files
$ENV{'TEXINPUTS'}='./latex//:' . $ENV{'TEXINPUTS'};
$ENV{'BIBINPUTS'}='./latex/bib//:' . $ENV{'BIBINPUTS'};
# asymptote command with output in a folder
sub asy {return system("asy -o asy/ '$_[0]'");}

