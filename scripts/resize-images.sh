#!/bin/bash -euox pipefail

project_root="$(dirname $0)/.."

out_dir="${project_root}/assets/images/"

mkdir -p "$out_dir"

for image in $(ls "${project_root}/original_images"); do
  image_path="${project_root}/original_images/${image}"
  image_no_extension="${image%.*}"

  convert "$image_path" -resize "x450" -gravity center -crop "300x450+0+0" +repage "${out_dir}/${image_no_extension}@1x.jpg"
  convert "$image_path" -resize "x900" -gravity center -crop "600x900+0+0" +repage "${out_dir}/${image_no_extension}@2x.jpg"
  convert "$image_path" -resize "x1350" -gravity center -crop "900x1350+0+0" +repage "${out_dir}/${image_no_extension}@3x.jpg"
done
