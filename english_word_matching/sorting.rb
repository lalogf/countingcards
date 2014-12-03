dictionary = []
c = []
i = "breads".chars
i.each do |el|
	b = i.index(el)+1
	comb_array = i.permutation(b).to_a

	# comb_array.map! do |element|
	# 	element.join
	# end
	comb_array.each do |word|
		c << word.join
	end

end




File.open("wordsEn.txt").each do |line|

	dictionary << line

end

dictionary.each do |word|
	if c.include?(word.chomp) then
		print word
	end
end
# print c.include?(dictionary[0].chomp)
# c.each do |word|
# 	if dictionary.include?(word) then
# 		print words
# 	end
# end




# c.each do |word|

# end


# File.open("wordsEn.txt").each do |line|
# 	c.each do |word| 
# 		if 
# 	end 
# end


# File.open("wordsEn.txt").each do |line|
#     if  i.chars.sort == line.chomp.split("").sort then
#     	puts line
#     end
#     # puts line.chomp.split("").sort
#     # puts i.chars.sort
# end




