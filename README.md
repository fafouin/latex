LaTeX starter files
===================

This project includes various files that can be useful when starting a new LaTeX document:

* `main.tex`: main file for the LaTeX document.
* `latexInit`: Bash script to initialize the LaTeX document.
* `ultipack.tex`: lists common or useful LaTeX packages and some customizations. Uncomment the ones you need!
* `mathDefinitions.tex`: defines additional mathematical operators, commands and notation.
* `latexmkrc`: local configuration file for the [latexmk](http://www.ctan.org/pkg/latexmk) utility that automatizes the compilation process. Important configuration options are included and can be changed as needed.
* `gitignore`: local gitignore file where common ancillary LaTeX file (and other) extensions have been added.
* `misc` folder: directory containing examples for user configuration files (git, latexmk, etc.). They should be placed in the home directory.

__Instructions:__ In `latexInit`, modify the document name as desired and run the script. The file `main.tex` will be renamed and moved into the parent directory, and simlinks will be created for `latexmkrc` and `gitignore`.

###TODO

+ write the `latexInit` script in Python and improve it (e.g. flags for git and latexmk usage, more customizations of main.tex)
+ describe workflow

