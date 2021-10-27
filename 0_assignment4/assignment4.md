# Lab 11 Command-line parsing and expansion

1. Write a script copyfile.bash that has one option “–o”, which takes an output file name argument and then takes non option arguments which should be an input file name. The program copies all content from each input file name and append to the output file.
   For example, if files song1.txt, song2.txt and song3.txt exist in a directory and the user run the program
   ./copyfile.bash –o allsongs.txt song?.txt then the program will create file allsongs.txt which had the content from song1.txt, song2.txt and song3.txt
   If the user run the program ./copyfile.bash –o allsongs.txt song? then no file is created.
