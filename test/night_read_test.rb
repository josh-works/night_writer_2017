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
		@braille_text.split_by_three
	end

	def test_can_split_by_two_characters
		pair = @braille_text.split_into_pairs
		
		assert_equal 2, pair[0][0].length
		assert_equal 2, pair[0][1].length
		assert_equal 2, pair[0][2].length
		assert_equal 2, pair[0][3].length
		assert_equal 2, pair[0][4].length
		assert_equal 2, pair[0][5].length
	end

	def test_line_one_through_three_outputs_hello_world_from_test_file_txt
		assert_equal "hello world", @braille_text.zip_array
	end
end