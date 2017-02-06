require_relative'test_helper'
require'./lib/letters'

class LettersTest < Minitest::Test
	def test_can_check_singular_letters
		letter = Letters.new(["0.", "..", ".."])
		assert_equal "a", letter.convert
	end

	def test_can_add_letters_together
		letter_1 = Letters.new(["0.", "00", ".."])
		letter_2 = Letters.new(["0.", ".0", ".."])
		letter_3 = Letters.new(["0.", "0.", "0."])
		letter_4 = Letters.new(["0.", "0.", "0."])
		letter_5 = Letters.new(["0.", ".0", "0."])
		word = letter_1.convert + letter_2.convert + letter_3.convert + letter_4.convert + letter_5.convert
		
		word_arr = Array.new
		word_arr << letter_1.convert
		word_arr << letter_2.convert
		word_arr << letter_3.convert
		word_arr << letter_4.convert
		word_arr << letter_5.convert

		assert_equal "hello", word
		assert_equal "hello", word_arr.join
	end
end
