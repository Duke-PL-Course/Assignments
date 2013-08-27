# Bash

Bash is a popular modern shell for your terminal. The shell is the program that interprets and executes your command line input. In addition to running on the command line, it is possible to create files containing shell commands to be executed sequentially. The program is called a **shell script**.

Shell scripts are good for automating simple tasks. In this exercise, we will use a shell script to parse a log file. The log file, called chronline.2013.08.27, is a dump of the production logs for dukechronicle.com. We want to figure out what percentage of requests came in from the Duke network. The script should
1) Create a new file containing a sorted list of IP addresses making requests, one per line
2) Output a line saying:
```
$ ./log_parse.sh
Total Duke addresses: 8/116
$
```

## Creating a shell script

In your editor, create a new file in this directory called `log_parse.sh`. Enter the following text into the file:
```bash
#!/bin/bash

echo "Hello World!"
```

Now in your terminal, execute:
```
# Set executable permissions for this file
$ chmod +x log_parse.sh
$ ./log_parse.sh
```

The program should greet you with "Hello World!".

## Parsing the logs

First the log file is compressed using bzip2. You must first figure out how to decompress it. Once it is decompressed, we want to find all lines matching the following regular expression (in `sed` syntax): `Started GET ".*" for \([0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\)`. There are many options for stream processing with regular expressions, one of which is [sed](http://www.grymoire.com/Unix/Sed.html). You may first have to filter the lines using a tool like `grep`. The `sort` utility and file redirection will also be necessary.

## Determining the output

Once you have a file containing the IP addresses, you can use the `wc` utility to count the number of lines. The number of lines will be the total number of IP addresses. This line will save that count to a variable:
`NUM_ADDRESSES=$(cat addresses | wc -l)`

Finally, the `echo` builtin will echo a string to standard output. Note that bash supports variable interpolation in strings with double quotes. For example:
```bash
$ WORLD=Earth
$ echo "Hello $WORLD"
Hello Earth
```
