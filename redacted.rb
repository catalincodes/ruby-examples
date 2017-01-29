puts "Provide text : "
userInput = gets.chomp
wordsArray = userInput.split(" ")

puts "Provide redacted words (separated by a comma): "
redactedWordsInput = gets.chomp
redactedWordsArray = redactedWordsInput.split(",")

print "Processing input ... "

redactedOutput = ""
wordsArray.each do |word|
    isCurrentWordRedacted = false
    redactedWordsArray.each do |redactedWord|
        if word.upcase == redactedWord.upcase
            redactedWordLength = redactedWord.length
            redactedWordLength.times do
                redactedOutput += "*"
            end
            redactedOutput += " "
            isCurrentWordRedacted = true
        end
    end
    
    if isCurrentWordRedacted == true
        isCurrentWordReacted = false
    else
        redactedOutput += (word + " ")
    end
end
print "DONE"

print "Result : " + redactedOutput