require_relative'letters'
class NightRead
	attr_reader :read
	def initialize
		@read = File.read("./test_file.txt")
		require'pry';binding.pry
	end

	def close
		@read.close
	end

	def file_array
		# until file_arr.count == 3
		file_arr = @read.split("\n")	
		if file_arr.count <= 3
			require'pry';binding.pry
			file_arr.map do |line|
				line.scan(/../)
			end
		end
	end

	def psuedocode
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

# split by every 2 characters .split(/../)
# seperate by each line (and every 3 lines)
# if index is same << into an array together
# set specific arrays == the arrays it creates