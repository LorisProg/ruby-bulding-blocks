=begin
Substrings
for The Odin Project  
by Loris Aranda
version 1.0 written with my current knowldge of Ruby (1st August 2016)
=end

def substrings(input_string, dictionary)

	input_string = input_string.downcase

	list = Hash.new(0)

	input_string.split(/[^a-zA-Z]/).each do |string_word|
		dictionary.each do |word|
			word = word.downcase.to_s
			if string_word.include? word
				list[word] += 1
			end
		end
	end
		list
end