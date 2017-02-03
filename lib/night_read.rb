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
		file_arr = @read.split("\n")
		file_arr.map do |line|
			line.split(/../)
		end
	end
end

# split by every 2 characters .split(/../)
# seperate by each line (and every 3 lines)
# if index is same << into an array together
# set specific arrays == the arrays it creates