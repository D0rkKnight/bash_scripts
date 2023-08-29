# cd test
unalias cdlsf 2> /dev/null
cdlsf() {
  local selected_dir
  selected_dir=$(ls -d */ | fzf)
  if [ -n "$selected_dir" ]; then
    cd "$selected_dir"
  fi
}
export -f cdlsf > /dev/null

# Courtesy of https://dmitryfrank.com/articles/shell_shortcuts
# Setup cdg function
# ------------------
unalias cdg 2> /dev/null
cdg() {
  if [[ $1 == "-a" && $# -ge 2 ]]; then
    echo $(pwd) >> "$2"
    echo "Current directory added to $2"
    return
  fi

   local dest_dir=$(cdscuts_glob_echo | fzf )
   if [[ $dest_dir != '' ]]; then
      dest_dir=$(eval echo "$dest_dir")
      cd $dest_dir
   fi
}
export -f cdg > /dev/null