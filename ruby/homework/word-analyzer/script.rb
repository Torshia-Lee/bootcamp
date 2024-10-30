# Sample list of words
words = ["level", "elephant", "ruby", "book", "hello"]

for word in words do
    # Writes the word
    puts "Word: #{word}"
    reverse_word = word.reverse

    #Checks for palindrome
    if reverse_word == word
        puts "- Palindrome: Yes"
    else 
        puts "- Palindrome: No"
    end

    # Contains e
    if word.include? "e"
        puts "- Contains 'e': Yes"
    else
        puts "- Contains 'e': No"
    end

    #Character count
    word_length = word.length 
    puts "- Character Count: #{word_length}"


    #Replace ruby wuth python 
    if word.include? "ruby"
        word.gsub!(/ruby/, "python")
        puts "- After Replacement: #{word}"
    else
        puts "- After Replacement: #{word}"
    end


end 