class Timer
  def initialize
  	@seconds = 0
  end

  def seconds
  	@seconds
  end

  def seconds=(time)
  	@seconds = time
  end

  def padded(num)
  	if num < 10
  		y="0"+num.to_s
  	else
  		y=num.to_s
  	end
  	y
  end

  def time_string
  	total_hour = @seconds / 3600
  	total_min = (@seconds%3600)/60
  	total_sec = (@seconds%3600)%60

  	padded(total_hour)+":"+padded(total_min)+":"+padded(total_sec)
  end
end