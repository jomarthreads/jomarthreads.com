#!/bin/bash -euox pipefail

project_root="$(dirname $0)/.."

out_dir="${project_root}/assets/images/"

mkdir -p "$out_dir"

for image in $(ls "${project_root}/original_images"); do
  image_path="${project_root}/original_images/${image}"
  image_no_extension="${image%.*}"

  convert "$image_path" -resize "x300" -gravity center -crop "200x300+0+0" +repage "${out_dir}/${image_no_extension}-200w.jpg"
  convert "$image_path" -resize "x600" -gravity center -crop "400x600+0+0" +repage "${out_dir}/${image_no_extension}-400w.jpg"
  convert "$image_path" -resize "x900" -gravity center -crop "600x900+0+0" +repage "${out_dir}/${image_no_extension}-600w.jpg"
done
