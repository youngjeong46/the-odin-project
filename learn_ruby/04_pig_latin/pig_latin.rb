#write your code here
def translate(str)
	str=str.split(" ")
	vowels=["a","e","i","o","u"]
	y = str.map{|x|
		if x.include? 'qu'
			x = x[x.index('qu')+2..-1]+x[0..x.index('qu')+1]
		else
			while !vowels.include? x[0] do
				x=x[1..-1]+x[0]
			end
		end
		x=x+"ay"
	}
	y.join(" ")
end