require_relative'letters'
require'pry'

class NightRead
	attr_reader :read

	def initialize
		@read = File.read("./test_file.txt").split("\n")
		@full_text = []
		@scan_arr = []
	end
	
	def split_into_pairs
		@read.each do |letter|
				@scan_arr << letter.scan(/../)
			end
		@scan_arr
	end

	def zip_every_three
		split_into_pairs
		zipped = []
		translated = []
		line1 = @scan_arr[0]
		line2 = @scan_arr[1]
		line3 = @scan_arr[2]
			zipped << line1.zip(line2, line3)
		zipped[0].each do |letter_arr|
			translate = Letters.new(letter_arr)
			translated << translate.convert
		end
		@scan_arr.shift(3)
		translated.join
	end

end


# NightRead.new.split_by_three
# NightRead.new.split_into_pairs
# NightRead.new.zip_array
NightRead.new.zip_every_three
