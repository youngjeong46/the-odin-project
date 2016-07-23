#write your code here
def add(one,two)
	one+two
end

def subtract(one,two)
	one-two
end

def sum(arr)
	y=0
	arr.each { |x| y+=x}
	y
end

def multiply(arr)
	y=1
	arr.each {|x| y*=x}
	y
end

def power(base,power)
	y=1
	power.times do |x|
		y=y*base
	end
	y
end

def factorial(num)
	y=1
	for i in 2..num
		y=y*i
	end
	y
end

