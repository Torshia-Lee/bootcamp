# Task 1
# 1. Create an array named fruits with specified elements
fruits = ["apple", "banana", "cherry", "date", "fig", "grape"]

#  2. Print the entire array
puts fruits

# 3. Print the first and last elements of the array
puts "First element: #{fruits.first}"
puts "Last element: #{fruits.last}"

# 4. Add "kiwi" to the end of the array
fruits << "kiwi"

# 5. Remove "cherry" from the array
fruits.delete("cherry")

# 6. Print the modified array
puts "Modified array: #{fruits}"

# 7. Check if "apple" is in the array and print the result
puts "Is 'apple' in the array? #{fruits.include?("apple")}"

# 8. Calculate and print the total number of fruits in the array
puts "Total number of fruits: #{fruits.length}"


#Task 2
# Step 1: Create a hash named student with the specified key-value pairs
student = {
  "name" => "John Smith",
  "age" => 25,
  "major" => "Computer Science"
}

# Step 2: Print the entire hash
puts "Original hash: #{student}"

# Step 3: Print only the value associated with the "name" key
puts "Name: #{student["name"]}"

# Step 4: Add a new key-value pair "gpa" => 3.7
student["gpa"] = 3.7

# Step 5: Update the "age" value to 26
student["age"] = 26

# Step 6: Print the modified hash
puts "Modified hash: #{student}"

# Step 7: Check if the hash contains a key "gender" and print the result
puts "Contains key 'gender'? #{student.key?("gender")}"