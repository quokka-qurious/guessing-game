# prompt the user for a guess
echo "How many files are in the current directory?"
read guess

# count how many files are in the directory
correct_answer=$(ls | wc -l)

# check if the guess was correct
if [[ $guess -eq $correct_answer ]]
then
  echo "Correct!"
else
  echo "Incorrect!"
fi

# output the guess and answer
echo "Your Guess:"
echo "$guess"
echo "The answer:"
echo "$correct_answer"
