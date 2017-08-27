# This function returns "high" or "low" as a text response 
# to the user's guess and actual file count comparison.
function highorlow {
  actual_fn=$1
  response_fn=$2
  if [[ $actual_fn < $response_fn ]]
  then
    echo "high"
  else 
    echo "low"
  fi
}
# Start of program.
echo ""
echo "Welcome to my guessing game!"
echo ""
actual=$(dir | wc -w)
response=$actual-1
echo "How many files do you think are in this directory? "
echo ""
read response
while [[ $response != $actual ]]
do
  error=$(highorlow $actual $response)
  if [[ $response != $actual ]]
  then
    echo ""
    echo "Nope, your guess is too $error!"
    echo ""
    echo "Now how many files do you think are in this directory?"
    echo ""
    read response
  fi
done
echo ""
echo "You're right!  There are $actual files in this directory!"
echo ""
echo "See you next time."
