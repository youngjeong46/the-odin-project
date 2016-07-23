class Book
	def initialize

	end

	def title
		@title
	end

	def title=(str)
		conj=["and","but","or","yet","for","nor","so"]
		prep=["at","on","in","to","for","since","up","about", "the","of"]
		art=["the","a","an"]
		str=str.split(" ").map{|x|
			if (conj+prep+art).include? x
				x
			else
				x.capitalize
			end
			}.join(" ")
		@title = str.slice(0,1).capitalize+str.slice(1..-1)
	end
end
