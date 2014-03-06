LaTeX
=====

This project includes various files and folders that can be useful when starting a new LaTeX document project.

* `ultipack.sty`: metapackage providing common and useful LaTeX packages. Many are commented out and can be used only when needed.
* `mathoper.tex`: custom mathematical operators.
* `abbrevs.tex`: file that can be used to define project-specific commands and abbreviations.
* `bib`: folder where the project BibTeX/BibLaTeX files can be stored. It includes an empty BibTeX file (in order to track it).
* `latexmkrc`: local configuration file for latexmk that sets the TEXINPUT and BIBINPUT environment variables so that it is not necessary to specify the path to ancillary files present in the latex folder (this project). This file must be linked to the main folder of the LaTeX project (see below).
* `gitignore`: local gitignore file where common ancillary LaTeX file (and other) extensions have been added. This file must be linked to the main folder of the LaTeX project (see below).

####My current workflow:

I use this project as a submodule of the main LaTeX project and I create a branch inside the submodule, such that project-specific modifications are kept separate from the main (general) branch. When I create a new project, I use the following steps:

1. create a folder for the project and initialize the local Git repo: `[main]$ git init`
2. add ancillary latex files as a submodule: `[main]$ git submodule add https://github.com/fafouin/latex.git latex`
3. in the `latex` folder, create a new branch for the current project: `[latex]$ git checkout -b project_name`
4. if necessary (for mobility), push the new branch upstream: `[latex]$ git push -u origin project_name`
5. in the main folder, create a symbolic link to the `latexmkrc` and `gitignore` files: `[main]$ ln -s latex/latexmkrc .latexmkrc && ln -s latex/gitignore .gitignore`
6. if desired, create a `README.md` file and the a skeleton of the LaTeX document (main.tex) and add the new files to the project: `[main]$ git add README.md main.tex .latexmkrc .gitignore`
7. first commit: `[main]$ git commit -m "Initial commit: Skeleton of the document (main.tex), README, .latexmkrc, .gitignore and latex submodule"`
8. if necessary, create a remote repo and add its link to the project: `[main]$ git remote add origin link_to_remote`
9. when ready (hacking, branches, commits, etc.), push the project to the remote repo: `[main]$ git push -u origin --all`

When I clone an existing LaTeX project, I use the `--recursive` flag so that the `latex` submodule is also initialized. Then, I cd to the `latex` folder and create the branch for the current project: `[latex]$ git checkout -b project_name`.

If there is a new verson of the `latex` submodule upstream, I sync the local and remote repos using: `[main]$ git submodule update --merge`. The `--merge` flags also merge the changes to the project branch in the submodule. Note that this does not update the master branch of the submodule, since we track the changes to the project branch. If the master branch is updated, I simply pull the changes inside the project branch (`[latex]$ git pull origin master`). Note that I use the `branch.autosetuprebase = always` option.

