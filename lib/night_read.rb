require_relative'letters'

class NightRead
	attr_reader :read, :full_text

	def initialize
		@read = File.read(ARGV[0]).split("\n")
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
		line1 = @scan_arr[0]
		line2 = @scan_arr[1]
		line3 = @scan_arr[2]
		zipped << line1.zip(line2, line3)
		translate(zipped)
	end

	def translate(zipped)
		translated = zipped[0].map do |letter_arr|
			converter = Letters.new(letter_arr)
				converter.convert
		end
		@scan_arr.shift(3)
		full_text << translated.join
		translated.join
	end

	def write_to_file
		(@read.count/3).times do
			zip_every_three
		end
		File.open(ARGV[1], 'w') { |text| text.puts full_text.join("\n")}
	end

end
