deck=[]
number = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]
classes = ["h","s","d","c"]
count1 = ["2","3","4","5","6","7"]
count2 = ["10","J","Q","K","A"]
print "How many decks you want?"
i = gets.chomp.to_i
count = 4 - (4 * i)
stop = []

(4*i).times do 
	stop << (rand(1..(i * 51))) unless stop.include?((rand() * (i * 51)).to_i)
end 



i.times do
	number.each do |el|
		(1..4).map do |h| 
			deck << el + classes[h-1]  
		end
	end
end

shuffledcards = deck.shuffle


shuffledcards.each do |card|
	
	if count1.include?(card.chars[0]) then
		count = count + 1 
	end
	if count2.include?(card.chars[0]) then
		count = count - 1
	end


	p card  
	sleep(0.2)

	if stop.include?(deck.index(card)) 
		print "What's the count? "
		user_guess = gets.chomp

		if user_guess.to_i == count
			puts "You'll be millonaire" 
			puts "The count is " + count.to_s
		end

		if user_guess.to_i != count
			puts "Wrong guess" 
			puts "The count is  " + count.to_s
		end

	end



end













