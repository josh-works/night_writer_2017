require'./test/test_helper'
require'./lib/night_read'

class NightReadTest < Minitest::Test
	def setup
		@braille_text = NightRead.new
	end

	def test_turns_into_an_array
		assert_equal Array, @braille_text.read.class
	end

	def	test_break_into_smaller_arrays
		new_arr = Array.new

		new_arr << @braille_text.read
		assert_equal 1, new_arr.length
		@braille_text.split_into_letter_arrays
	end
end