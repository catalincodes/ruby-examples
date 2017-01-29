#Get Input
puts "Input please : "
text = gets.chomp
words = text.split(" ")

#Create Empty Historgram
frequencies = Hash.new(0)

#Count occurences
words.each do |word|
    frequencies[word]+=1
end

#Sort histogram
frequencies = frequencies.sort_by do |word, count|
    count
end
frequencies.reverse!

#Display result
frequencies.each do |word, count|
    puts word + " " + count.to_s
end