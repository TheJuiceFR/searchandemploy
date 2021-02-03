# searchandemploy
Two Lua scripts for extracting the data from youtube-dl JSON output as well as Youtube api output.

You can set the input and output files by editing the scripts, then just run them using the Lua interpreter.

Inputs and outputs of botch scripts is included, except for the input from youtube-dl. That file is 180 MB, so just get it yourself with:
youtube-dl -J -j <link to playlist> | tee outputytdl.txt
