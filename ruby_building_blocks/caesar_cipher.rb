def caesar_cipher(str,num)
	def charShift(char,num)
		k=char.ord
		if ((k >= 65 && k <= 90-num )||(k >= 97 && k <= 122-num))	
			y = (k+num).chr
		elsif ((k>90-num && k <=90) || (k>122-num && k<=122))
			y = (k-(26-num)).chr
		else
			y = k.chr
		end
		y
	end
	
	raise "Please enter a String" if !str.is_a? String
	raise "Please enter an Integer" if !num.is_a? Integer 
	
	y=str.split(" ");
	y.each do |word|
		for j in 0..(word.length-1)
			word[j]=charShift(word[j],num)
		end
	end
	
	y.join(" ")
end

caesar_cipher("What a string!",5)
