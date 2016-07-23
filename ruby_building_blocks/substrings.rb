def substrings(sentence, dictionary)
	result=Hash.new(0)
	sentence=sentence.split(" ")
	sentence.each do |word|
		dictionary.each do |dic|
			if word[dic]
				if result.has_key?(dic)
					result[dic]+=1
				else
					result[dic]=1
				end
			end
		end
	end
	result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)