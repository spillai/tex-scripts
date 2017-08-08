find . -type f -name "*.tex" | xargs cat | aspell list -t | sort | uniq
