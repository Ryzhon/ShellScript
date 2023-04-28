#!/bin/bash

# 画像が格納されているディレクトリのパスを指定
img_dir="/home/projitsu/test/*"

# 水増しした画像を保存するディレクトリのパスを指定
output_dir="/home/projitsu/test/"

# 水増しの方法を指定
# 以下は例として、画像を反転させたり回転させたりする方法を示しています
convert_options=("-flip" "-flop" "-reverse" "-separate" "-mosaic" "-flatten")

# 画像を水増しする処理を実行
for file in ${img_dir}; do
  filename=$(basename "$file")
  filename_noext="${filename%.*}"
echo $file
  for option in "${convert_options}"; do
	  echo $file
    output_file="$file$option.jpg"
    echo $output_file
    convert "$option" "$file" "$output_file"
  done
done

