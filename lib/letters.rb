class Letters
	def initialize(array)
		@array = array
	end

	def convert
		case @array
			when ["0.", "..", ".."]
				"a"
			when ["0.", "0.", ".."]
				"b"
			when ["00", "..", ".."]
				"c"
			when ["00", ".0", ".."]
				"d"
			when ["0.", ".0", ".."]
				"e"
			when ["00", "0.", ".."]
				"f"
			when ["00", "00", ".."]
				"g"
			when ["0.", "00", ".."]
				"h"
			when [".0", "0.", ".."]
				"i"
			when [".0", "00", ".."]
				"j"
			when ["0.", "..", "0."]
				"k"
			when ["0.", "0.", "0."]
				"l"
			when ["00", "..", "0."]
				"m"
			when ["00", ".0", "0."]
				"n"
			when ["0.", ".0", "0."]
				"o"
			when ["00", "0.", "0."]
				"p"
			when ["00", "00", "0."]
				"q"
			when ["0.", "00", "0."]
				"r"
			when [".0", "0.", "0."]
				"s"
			when [".0", "00", "0."]
				"t"
			when ["0.", "..", "00"]
				"u"
			when ["0.", "0.", "00"]
				"v"
			when [".0", "00", ".0"]
				"w"
			when ["00", "..", "00"]
				"x"
			when ["00", ".0", "00"]
				"y"
			when ["0.", ".0", "00"]
				"z"
			when ["..", "..", ".."]
				" "
			else
				@array
		end
	end
end
