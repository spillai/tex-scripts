# Include the following before the \documentclass line in your paper.tex file
# \RequirePackage{snapshot}
#
# Then run this script as:
# $ bundle_latex.sh scripts/bundle.cfg
bundledoc paper.dep --config=$1
