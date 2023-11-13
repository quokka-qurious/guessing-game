# prompt the user for a guess
echo "How many files are in the current directory?"
read guess

# count how many files are in the directory
correct_answer=$(ls | wc -l)

# checks if the guess was either too high or too low
# param 1: guess
# param 2: correct answer
function give_hint {
  
  if [[ $1 -lt $2 ]]
  then
    echo "$1 is too low."
  else
    echo "$1 is too high."
  fi
}

# ask for a guess until the user gets it right
while [[ $guess -ne $correct_answer ]]
do
  echo "Wrong"
  
  give_hint $guess $correct_answer
  
  echo "Try again."
  read guess
done

# congratulate the user
echo "Well done! $guess is the correct answer."
