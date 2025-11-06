mkdir -p tn/images
for file in images/*.jpg images/*.png; do
  [ -e "$file" ] || continue
  [ ! -f "tn/$file" ] && convert "$file" -thumbnail 160x160 "tn/$file"
done
