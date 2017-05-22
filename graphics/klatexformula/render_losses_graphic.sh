DPI=1200
OUTPUT_DIR=latex-renders
klatexformula  \
    --latexinput '\textbf{z}_{t-1,t} \ominus \hat{\textbf{z}}_{t-1,t}' \
    --dpi $DPI --output $OUTPUT_DIR/mdn-loss.png
klatexformula  \
    --latexinput '\textbf{z}_{1,t} \ominus \hat{\textbf{z}}_{1,t}' \
    --dpi $DPI --output $OUTPUT_DIR/traj-loss.png
klatexformula  \
    --latexinput 'x, \Delta x_{t-1,t}, \textbf{z}_{t-1,t}, \textbf{z}_{1,t}' \
    --dpi $DPI --output $OUTPUT_DIR/training-inputs-1.png
klatexformula  \
    --latexinput '\forall t \in {1,\dots,T}' \
    --dpi $DPI --output $OUTPUT_DIR/training-inputs-2.png

klatexformula  \
    --latexinput 'x_{1}, \Delta x_{1,2}' \
    --dpi $DPI --output $OUTPUT_DIR/inp12.png
klatexformula  \
    --latexinput 'x_{2}, \Delta x_{2,3}' \
    --dpi $DPI --output $OUTPUT_DIR/inp23.png
klatexformula  \
    --latexinput 'x_{3}, \Delta x_{3,4}' \
    --dpi $DPI --output $OUTPUT_DIR/inp34.png
klatexformula  \
    --latexinput 'x_{T-1}, \Delta x_{T-1,T}' \
    --dpi $DPI --output $OUTPUT_DIR/inpT-1T.png


klatexformula  \
    --latexinput '\hat{\textbf{z}}_{1,2}' \
    --dpi $DPI --output $OUTPUT_DIR/zhat12.png
klatexformula  \
    --latexinput '\hat{\textbf{z}}_{2,3}' \
    --dpi $DPI --output $OUTPUT_DIR/zhat23.png
klatexformula  \
    --latexinput '\hat{\textbf{z}}_{3,4}' \
    --dpi $DPI --output $OUTPUT_DIR/zhat34.png
klatexformula  \
    --latexinput '\hat{\textbf{z}}_{T-1,T}' \
    --dpi $DPI --output $OUTPUT_DIR/zhatT-1T.png

# zhat12.png
klatexformula  \
    --latexinput '\hat{\textbf{z}}_{1,2} \oplus \hat{\textbf{z}}_{2,3}' \
    --dpi $DPI --output $OUTPUT_DIR/zoplus123.png
klatexformula  \
    --latexinput '\hat{\textbf{z}}_{1,3} \oplus \hat{\textbf{z}}_{3,4}' \
    --dpi $DPI --output $OUTPUT_DIR/zoplus134.png
klatexformula  \
    --latexinput '\hat{\textbf{z}}_{1,T-1} \oplus \hat{\textbf{z}}_{T-1,T}' \
    --dpi $DPI --output $OUTPUT_DIR/zoplus1T-1T.png

klatexformula  \
    --latexinput '\hat{\textbf{z}}_{1,3}' \
    --dpi $DPI --output $OUTPUT_DIR/zhat13.png
klatexformula  \
    --latexinput '\hat{\textbf{z}}_{1,4}' \
    --dpi $DPI --output $OUTPUT_DIR/zhat14.png
klatexformula  \
    --latexinput '\hat{\textbf{z}}_{1,T}' \
    --dpi $DPI --output $OUTPUT_DIR/zhat1T.png

# Render losses-graphic again with all the symbolic links updated
inkscape -D -z --file=losses-graphic.svg --export-pdf=losses-graphic.pdf
