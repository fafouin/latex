LaTeX
=====

LaTeX stuff!

- ultipack.sty: metapackage providing common and useful LaTeX packages. Many are commented out so that they can be used only when needed.
- mathoper.tex: custom mathematical operators.
- latexmkrc: local configuration file for latexmk that sets the TEXINPUT and BIBINPUT environment variables so that it is not necessary to specify the path to ancillary files present in the latex folder (this project!). This file must be copied in the root folder of the LaTeX project.
- bib folder: BibTeX/BibLaTeX files for my PhD project (Synthetic Aperture Radar signal processing).

###A little note on my workflow:

I made this project because I wanted to easily import ancillary files that I tend to use for many LaTeX documents. However, I want to be able to modify these files on a project to project basis, but I don't necessarily want to push these changes upstream. For this reason, I think it's preferable to include these files in the LaTeX project and track the local changes along with the main document. That's why I don't make this project a submodule of the main document. Instead, when I want start a new document, I use these steps:

1. Create a folder for the new document (main) and initialize the Git repository: `[main]$ git init`

2. Clone the latex project: `[main]$ git clone https://github.com/fafouin/latex.git latex`

3. Copy the latexmkrc in the main folder: `[main]$ cp latex/latexmkrc .latexmkrc`

4. Create a new branch for local changes in the latex project: `[latex]$ git checkout -b local`

5. If necessary, create a local .gitignore file: `[main]$ touch .gitignore`

6. Add the files and latex folder to the main project: `[main]$ git add .latexmkrc latex/* (.gitignore)`

7. Initial commit: `[main]$ git commit -m "Initial commit: .latexmkrc, latex folder, .gitignore"`

