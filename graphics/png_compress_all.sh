# Convert to jpgs
find . -type f \( -iname "*.png" \) -printf "echo %p; convert %p -quality 95 %p.jpg\n" | bash

# Rename png.jpg to jpg
find . -name "*.png.jpg" -exec rename 's/png\.//' {} ";"
