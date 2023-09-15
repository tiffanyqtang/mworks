#!/bin/bash
 
echo "Processing ${1}" #need to input which texture folder I am working on 
cd $1
#now we are in this texture folder
mkdir -p "Noise" #make a noise folder in this texture folder
mkdir -p "Signal" #make a signal folder in the texturefolder

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 #for each of the seed folders
do
    mkdir -p "./Noise/Seed${i}" #make Seed folder in the noise folder  
    eval "cp ./Seed${i}/*PoolSize0* ./Noise/Seed${i}/" #Move pool 0 of this seed into the Noise/Seed folder
   
    eval "cp -r ./Seed${i} ./Signal/" #move the seed folder w/o pool0 into the signal folder
    eval "rm ./Signal/Seed${i}/*PoolSize0*"
done

