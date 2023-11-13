# prompt the user for a guess
echo "How many files are in the current directory?"
read guess

# count how many files are in the directory
correct_answer=$(ls | wc -l)

# ask for a guess until the user gets it right
while [[ $guess -ne $correct_answer ]]
do
  echo "Wrong"

  # check if the guess was either too high or too low
  if [[ $guess -lt $correct_answer ]]
  then
    echo "$guess is too low."
  else
    echo "$guess is too high."
  fi

  echo "Try again."
  read guess
done

# congratulate the user
echo "Well done! $guess is the correct answer."
