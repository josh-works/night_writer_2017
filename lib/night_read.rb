require_relative'letters'
require'pry'

class NightRead
	attr_reader :read
	def initialize
		@read = File.read("./test_file.txt").split("\n")
		@converter = Letters.new
		@full_text = []
		@scan_arr = []
	end

	def split_by_three
		num = @read.count / 3
		num.times do 
			@full_text << @read.shift(3)
		end
		@full_text.each do |braille_line|
			braille_line.each do |letter|
				@scan_arr << letter.scan(/../)
			end
		end
		binding.pry
		@scan_arr
	end

	def zip_array
		line1 = @scan_arr[0]
		line2 = @scan_arr[1]
		line3 = @scan_arr[2]
		zip_arr = line1.zip(line2, line3)
		letters = []
		zip_arr.each do |letter|
			letters << @converter.convert(letter)
		end
		letters.join
	end

	def psuedocode
		#line1.zip(line2, line3) method
		#each with index
		#new_array = []
		#file_arr.each_with_index do |line, index|
		#		new_arr_#{index} = []
		#		new_array << new_arr_#{index} << line
		#end
		#word = []
		#new_array.each do |letter_arr|
		#		letter = Letters.new(letter_arr)
		#		word << letter
		#end
	end
end
NightRead.new.split_by_three
NightRead.new.split_into_letter_arrays
# split by every 2 characters .split(/../)
# seperate by each line (and every 3 lines)
# if index is same << into an array together
# set specific arrays == the arrays it creates