require 'minitest/autorun'
require 'minitest/pride'
require './lib/to_braille'

class ToBrailleTest < Minitest::Test
  def setup
    @braille = ToBraille.new
  end

  def test_letter_to_array_of_arrays
    result = @braille.convert_letter_to_braille("a")
    assert_equal ["0.","..",".."], result
  end

  def test_two_letters_to_array_of_arrays
    result = @braille.add_braille_to_lines("ab")
    assert_equal [["0.", "..", ".."], ["0.", "0.", ".."]], result
  end

  def test_single_array_converts_to_braille
    result = @braille.combine_lines([["0.", "..", ".."]])
    assert_equal ["0.","..",".."], result
  end

  def test_array_of_arrays_converts_to_braille
    array_of_arrays = [["0.", "..", ".."], ["0.", "0.", ".."]]
    result = @braille.combine_lines(array_of_arrays)
    assert_equal ["0.0.","..0.","...."], result
  end

  def test_single_letter_sentence
    result = @braille.add_braille_to_lines("a")
    assert_equal [["0.","..",".."]], result
  end

  def test_two_letter_sentence
    result = @braille.add_braille_to_lines("ab")
    assert_equal [["0.","..",".."], ["0.","0.",".."]], result
  end

  def test_z_!
    result = @braille.add_braille_to_lines("z!")
    assert_equal [["0.",".0","00"], ["..","00","0."]], result
  end

  def test_two_words_to_braille
    result = @braille.add_braille_to_lines("ah ha")
    assert_equal [["0.","..",".."],["0.","00",".."],["..","..",".."], ["0.","00",".."], ["0.","..",".."]], result
  end

  def test_single_letter_capitals
    result_1 = @braille.convert_letter_to_braille("A")
    result_2 = @braille.convert_letter_to_braille("B")
    result_3 = @braille.convert_letter_to_braille("C")
    assert_equal [["..", "..", ".0"], ["0.","..",".."]], result_1
    assert_equal [["..", "..", ".0"], ["0.","0.",".."]], result_2
    assert_equal [["..", "..", ".0"], ["00","..",".."]], result_3
  end

  def test_zero_to_braille
    result_1 = @braille.convert_letter_to_braille("0")
    result_2 = @braille.convert_letter_to_braille("9")
    assert_equal [[".0", ".0", "00"], [".0","00",".."]], result_1
    assert_equal [[".0", ".0", "00"], [".0","0.",".."]], result_2
  end

end
