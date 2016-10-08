#!/bin/bash

style_image=$1
content_image=$2
init=image
gpu=-1
num_iterations=200

th neural_style.lua -style_image $style_image -content_image $content_image -gpu $gpu -save_iter 0 -image_size 128 -num_iterations $num_iterations -init $init -output_image out_128x128.png
th neural_style.lua -style_image $style_image -content_image $content_image -gpu $gpu -save_iter 0 -image_size 256 -num_iterations $num_iterations -init out_128x128.png -output_image out_256x256.png
th neural_style.lua -style_image $style_image -content_image $content_image -gpu $gpu -save_iter 0 -image_size 512 -num_iterations $num_iterations -init out_256x256.png -output_image out.png
