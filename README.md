LaTeX
=====

Preamble files that can be imported into different LaTeX documents projects.

* `ultipack.sty`: metapackage providing common and useful LaTeX packages. Many are commented out and can be used only when needed.
* `mathoper.tex`: custom mathematical operators.
* `latexmkrc`: local configuration file for latexmk that sets the TEXINPUT and BIBINPUT environment variables so that it is not necessary to specify the path to ancillary files present in the latex folder (this project). This file must be linked to the main folder of the LaTeX project (see below).
* `bib/*`: BibTeX/BibLaTeX files for my PhD project (Synthetic Aperture Radar signal processing).

####My current workflow:

I use this project as a submodule of the main LaTeX project and I create a branch inside the submodule, in case I need to modify some of the ancillary files (especially `ultipack.sty`). When I create a new project, I use the following steps:

1. create a folder for the project and initialize the local Git repo: `[main]$ git init`
2. add ancillary latex files as a submodule: `[main]$ git submodule add https://github.com/fafouin/latex.git latex`
3. in the `latex` folder, create a new branch for the current project: `[latex]$ git checkout -b project_name`
4. if necessary (for mobility), push the new branch upstream: `[latex]$ git push -u origin project_name`
5. in the main folder, create a symbolic link to the `latexmkrc` file: `[main]$ ln -s latex/latexmkrc .latexmkrc`
6. if desired, create a `README.md` file and a `.gitignore` file and add the new files to the project: `[main]$ git add README.md .latexmkrc .gitignore`
7. first commit: `[main]$ git commit -m "Initial commit: README, .latexmkrc, .gitignore and latex submodule"`
8. if necessary, create a remote repo and add its link to the project: `[main]$ git remote add origin link_to_remote`
9. when ready (hacking, branches, commits, etc.), push the project to the remote repo: `[main]$ git push -u origin --all`

When I clone an existing LaTeX project, I use the `--recursive` flag so that the `latex` submodule is also initialized. Then, I move to the `latex` folder and create the branch for the current project: `[latex]$ git checkout -b project_name`.

If the `latex` submodule is updated, I sync the local and remote repos using: `[main]$ git submodule update --merge`. The `--merge` flags also merge the changes to the project branch in the submodule. Note that this will not update the master branch of the submodule, since we track the changes to the project branch. If the master branch is updated, I simply pull the changes inside the project branch (`[latex]$ git pull origin master`). Note that I use the `rebase.autosetuprebase = always` option.
