#write your code here
def echo(says)
	says
end

def shout(says)
	says.upcase
end

def repeat(says, *num)
	if num===[]
		says+" "+says
	else
		y=says
		(num[0]-1).times do 
			y=y+" "+says
		end
		y
	end
end

def start_of_word(str,place)
	str[0..place-1]
end

def first_word(str)
	str.split[0]
end

def titleize(str)
	# This is not a robust list, there are many more "little words"
	little_words=["and","an","a","or","the","over","from","as","at","by","but"]
	str=str.split(" ")
	str[0].capitalize!
	str.map{|x|
		unless little_words.include? x
			x.capitalize
		else 
			x
		end
		}.join(' ')
end