class NightRead
	def initialize(file = "./test_file.txt")
		@file = File.new
	end
end
# seperate by each line (and every 3 lines)
# split by every 2 characters .split(/../)
# if index is same << into an array together
# set specific arrays == the arrays it creates