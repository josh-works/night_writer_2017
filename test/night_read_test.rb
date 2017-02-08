require'./test/test_helper' 
require'./lib/night_read'

class NightReadTest < Minitest::Test
	def setup
		@braille_text = NightRead.new
	end

	def test_turns_into_an_array
		assert_equal Array, @braille_text.read.class
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

	def test_can_zip_can_read_and_convert_every_three_lines
		assert_equal "hello world", @braille_text.zip_every_three
		assert_equal "world", @braille_text.zip_every_three
		assert_equal "hello world", @braille_text.zip_every_three
		assert_equal "hello world", @braille_text.zip_every_three
		assert_equal "hello world", @braille_text.zip_every_three
	end

	def test_can_create_and_write_to_new_file
		@braille_text.write_to_file
		assert FileTest.exist?(ARGV[1])
	end
end