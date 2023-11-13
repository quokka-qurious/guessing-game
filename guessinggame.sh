# prompt the user for a guess
echo "How many files are in the current directory?"
read guess

# count how many files are in the directory
correct_answer=$(ls | wc -l)

# ask for a guess until the user gets it right
while [[ $guess -ne $correct_answer ]]
do
  echo "Wrong - there are not $guess files in the current directory."
  echo "Try again."
  read guess
done

# congratulate the user
echo "Well done! $guess is the correct answer."

