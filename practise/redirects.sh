#! /bin/bash

#redirecting output from echo 
echo "this was redirected from echo command" > redirectOutput.txt

# redirecting from cat : this uses terminal as input , >> used to append content to file.
# press ctrl d  to exit after entering content in terminal
cat >> redirectOutput.txt

#docDelimiter should not be used with single <
cat << EOF
hello, this is in cat command with delimiter of EOF
second line
EOF

# EOF is End Of File