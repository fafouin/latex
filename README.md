LaTeX
=====

This project includes various files and folders that can be useful when starting a new LaTeX document project.

* `ultipack.sty`: metapackage that makes it easier to load common and useful LaTeX packages. Many are commented out and can be used only when needed.
* `mathoper.tex`: custom mathematical operators.
* `abbrevs.tex`: file that can be used to define project-specific commandsi, operators and abbreviations.
* `latexmkrc`: local configuration file for the [latexmk](http://www.ctan.org/pkg/latexmk) utility that automatizes the compilation process. Important configuration options are included and can be changed as needed. A symbolic link pointing to this file has to be created in the main folder of the LaTeX project (see below).
* `gitignore`: local gitignore file where common ancillary LaTeX file (and other) extensions have been added. A symbolic link pointing to this file has to be created in the main folder of the LaTeX project (see below).
* `bib` folder: folder where the project BibTeX/BibLaTeX files can be stored. It includes an empty BibTeX file (in order to track it).


####My current workflow:

I use this project as a submodule of the main LaTeX project and I create a branch inside the submodule, in order to keep project-specific modifications separate from the main (master) branch. When I create a new project, I use the following steps:

1. Create a folder (`main`) for the project and initialize the local Git repo: `[main]$ git init`.
2. Add ancillary latex files as a submodule: `[main]$ git submodule add https://github.com/fafouin/latex.git latex`.
3. In the `latex` folder, create a new branch for the current project: `[latex]$ git checkout -b project_name`.
4. Ff necessary (for mobility), push the new branch upstream: `[latex]$ git push -u origin project_name`.
5. In the main folder, create a symbolic link to the `latexmkrc` and `gitignore` files: `[main]$ ln -s latex/latexmkrc .latexmkrc && ln -s latex/gitignore .gitignore`.
6. If desired, create a `README.md` file and a skeleton for the LaTeX document (`main.tex`). Add the new files to the project: `[main]$ git add README.md main.tex .latexmkrc .gitignore`
7. First commit: `[main]$ git commit -m "Initial commit: skeleton of the document (main.tex), README, .latexmkrc, .gitignore and latex submodule"`
8. If necessary, create a remote repo and add its link to the project: `[main]$ git remote add origin link_to_remote`
9. When ready (hacking, branches, commits, etc.), push the project to the remote repo: `[main]$ git push -u origin --all`

When I clone an existing LaTeX project, I use the `--recursive` flag so that the `latex` submodule is also initialized. Then, I cd to the `latex` folder and create the branch for the current project: `[latex]$ git checkout -b project_name`.

If there is a new verson of the `latex` submodule upstream, I sync the local and remote repos using: `[main]$ git submodule update --merge`. The `--merge` flags also merge the changes to the project branch in the submodule. Note that this does not update the master branch of the submodule, since we track the changes to the project branch. If the master branch is updated, I simply pull the changes inside the project branch (`[latex]$ git pull origin master`). Note that I use the `branch.autosetuprebase = always` option in my `.gitconfig`.


######TODO:

* Make a script (bash or python) to:
    * create the symlinks
    * ask to user what compilation process he desires and set the latexmk and LaTeX packages (graphicx, hyperref, ...) options accordingly (e.g. dvipdfmx, dvips, ...).

