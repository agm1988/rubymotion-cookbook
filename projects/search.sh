find . -type f -name *.rb -print | xargs  cat | grep -i $1
