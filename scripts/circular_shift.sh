#!/bin/bash

shift_characters() {
  s="$1"
  len=${#s}
  for (( i = 0; i < len; i++ )); do
    next_char=${s:$(( (i + 1) % len )):1}
    s="${s:0:i}$next_char${s:i+1}"
    echo -ne "\r$s" # Use -n to prevent a newline after each echo
    sleep 1      # Add a 1-second delay between prints
  done
  echo ""       # Print a newline after the loop is done
}

input_string="rombicosidodecaedro"
shift_characters "$input_string"

