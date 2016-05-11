Converting PNG to GIF via command line
 
We can use convert in the following fashion:  

   convert [input-options] input-file [output-options] output-file

to convert images as we see below:

	convert Stuff.png -channel Alpha -threshold 80% -resize 120x120 Stuff.gif

For more information on the options check the manpage of the convert command.