echo "Program Start"

function File_Count() {
  echo "$(ls | wc -w | tr -d '[:space:]')"
}
count=$(File_Count)

if [[ $count -eq 0 ]]
  then
    echo "There are no files in this Directory"
    echo "Program End"
fi

while [[ $count -gt 0 ]]
do
  echo "How many files are in the current directory?"
  read var1
  while [[ $var1 -ne $count ]]
  do
    if [[ $var1 -gt $count ]]
      then
        echo "Too high! Try again!"
        echo "How many files are in the current directory?"
        read var1
    elif [[ $var1 -lt $count ]]
      then
        echo "Too low! Try again!"
        echo "How many files are in the current directory?"
        read var1
    fi
done
break
done

if [[ $var1 -eq $count ]]
  then
    echo "Congratulations! You have guessed correctly."
    echo "Program End"
fi
