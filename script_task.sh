#!/bin/bash

# Task 1: Ask for name and age, output name and year born
function task1() {
  read -p "Enter your name: " name
  read -p "Enter your age: " age
  year_born=$(( $(date +%Y) - age ))
  echo "Hello, $name! You were born in $year_born."
}

# Task 2: Create a new directory and navigate into it
function task2() {
  read -p "Enter a directory name: " dir_name
  mkdir "$dir_name"
  cd "$dir_name" || exit
  echo "You are now in: $(pwd)"
}

# Task 3: List files in the current directory sorted by size
function task3() {
  ls -lS
}

# Task 4: Count number of files in the current directory
function task4() {
  num_files=$(ls -1 | wc -l)
  echo "Number of files in the current directory: $num_files"
}

# Task 5: Take list of numbers and output the sum
function task5() {
  read -p "Enter a list of numbers separated by spaces: " numbers
  sum=0
  for num in $numbers; do
    sum=$((sum + num))
  done
  echo "Sum of numbers: $sum"
}

# Task 6: Output a random number between 1 and 100
function task6() {
  random_num=$((RANDOM % 100 + 1))
  echo "Random number between 1 and 100: $random_num"
}

# Task 7: Create a backup of a specified file with timestamp in filename
function task7() {
  read -p "Enter the filename to backup: " filename
  timestamp=$(date +%Y%m%d%H%M%S)
  backup_dir="backup"
  mkdir -p "$backup_dir"
  cp "$filename" "$backup_dir/${filename}_backup_$timestamp"
  echo "Backup created: $backup_dir/${filename}_backup_$timestamp"
}

# Task 8: Check if a website is online
function task8() {
  read -p "Enter the website URL: " website
  if curl --output /dev/null --silent --head --fail "$website"; then
    echo "Website is online: $website"
  else
    echo "Website is down: $website"
  fi
}

# Task 9: Convert Celsius to Fahrenheit
function task9() {
  read -p "Enter temperature in Celsius: " celsius
  fahrenheit=$(( (celsius * 9/5) + 32 ))
  echo "${celsius}°C is equal to ${fahrenheit}°F"
}

# Task 10: Reverse a sentence
function task10() {
  read -p "Enter a sentence: " sentence
  reversed_sentence=$(echo "$sentence" | rev)
  echo "Reversed sentence: $reversed_sentence"
}

# Call the functions
task1
task2
task3
task4
task5
task6
task7
task8
task9
task10
