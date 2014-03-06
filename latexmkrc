$ENV{'TEXINPUTS'}='./latex//:' . $ENV{'TEXINPUTS'};
$ENV{'BIBINPUTS'}='./latex/bib//:' . $ENV{'BIBINPUTS'};
sub asy {return system("asy -o asy/ '$_[0]'");}

