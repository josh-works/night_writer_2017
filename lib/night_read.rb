require_relative'letters'
require'pry'

class NightRead
	attr_reader :read

	def initialize
		@read = File.read("./test_file.txt").split("\n")
		@full_text = []
		@scan_arr = []
		@conterted_strings_by_line = []
	end

	def split_by_three
		num = @read.count / 3
		num.times do 
			@full_text << @read.shift(3)
		end
		@full_text		
	end

	def split_into_pairs
		@read.each do |letter|
				@scan_arr << letter.scan(/../)
			end
		@scan_arr
	end

	def zip_array
		zip_arr = []
		letters = []
		split_into_pairs.each do |array|
			line1 = array[0].split(" ")
			line2 = array[1].split(" ")
			line3 = array[2].split(" ")
			# binding.pry
			zip_arr << line1.zip(line2, line3)
		end
			zip_arr.each do |letter|
				translator = Letters.new(letter)
				letters << translator.convert
			# binding.pry
		@converted_strings_by_line << letters.join
			end
		# binding.pry
		@converted_strings_by_line
	end

end

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

NightRead.new.split_by_three
NightRead.new.split_into_pairs
NightRead.new.zip_array
# split by every 2 characters .split(/../)
# seperate by each line (and every 3 lines)
# if index is same << into an array together
# set specific arrays == the arrays it creates