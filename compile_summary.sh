#!/bin/sh
#Create a short summary file from results in :
#	resnet_pet-images.txt
#	alexnet_pet-images.txt 
#	vgg_pet-images.txt
x=`wc -l resnet_pet-images.txt | cut -f1 -d " "`
y=`grep -n "*** Result" resnet_pet-images.txt | cut -f1 -d ":"`
lines=$(($x-$y+1))
`tail -n $lines resnet_pet-images.txt > compiled_summary.txt`
echo "" >> compiled_summary.txt

x=`wc -l alexnet_pet-images.txt | cut -f1 -d " "`
y=`grep -n "*** Result" alexnet_pet-images.txt | cut -f1 -d ":"`
lines=$(($x-$y+1))
`tail -n $lines alexnet_pet-images.txt >> compiled_summary.txt`
echo "" >> compiled_summary.txt

x=`wc -l vgg_pet-images.txt | cut -f1 -d " "`
y=`grep -n "*** Result" vgg_pet-images.txt | cut -f1 -d ":"`
lines=$(($x-$y+1))
`tail -n $lines vgg_pet-images.txt >> compiled_summary.txt`