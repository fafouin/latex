$ENV{'TEXINPUTS'}='./latex//:' . $ENV{'TEXINPUTS'};
$ENV{'BIBINPUTS'}='./latex/bib//:' . $ENV{'BIBINPUTS'};
sub asy {return system("asy -o figures/ '$_[0]'");}
