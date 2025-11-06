for file in images/*.{jpg,png,JPG,PNG}; do
    [ ! -f "tn/$file" ] && convert "$file"  -thumbnail 160x160 "tn/$file"
done