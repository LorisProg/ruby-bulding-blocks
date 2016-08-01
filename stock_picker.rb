=begin
Stock Picker
for The Odin Project  
by Loris Aranda
version 1.0 written with my current knowldge of Ruby (1st August 2016)
=end

def stock_picker (array)

# the array is a list of stock price day after day
# the method should return the pair of best day to buy and sell
# the first day is to buy to second is to sell, the pair should represent the maximum difference between 2 prices in the array

# first easy implementation for a simple special case

	if array.index(array.min) < array.index(array.max)
		return [array.index(array.min), array.index(array.max)]
	end

# more complexe (and complete I hope) implementation

	low = array[0]
	high = 0
	lowBis = array[0]
	lowIndex = 0
	highIndex = 0
	lowBisIndex = 0

	array.each_with_index do |value, index|
		
		if value < low
			if highIndex == 0
				low = value
				lowIndex = index
				lowBis = low
				lowBisIndex = lowIndex
			end
			if highIndex > 0
				if value < lowBis
					lowBis = value
					lowBisIndex = index
				end
			end
		end

		if value > high
			if index > lowIndex
				high = value
				highIndex = index
			end
		end

		if highIndex > 0
			if (value - lowBis) > (high - low)
				low = lowBis
				lowIndex = lowBisIndex
				high = value
				highIndex = index
			end
		end
	end

	[lowIndex, highIndex]

end