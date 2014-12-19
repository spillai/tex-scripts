find $1 -type f \( -iname "*.pdf" \) -printf "pdfcrop %p %p\n" | bash
