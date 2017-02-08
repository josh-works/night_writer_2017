require 'minitest/autorun'
require 'minitest/pride'
require './lib/to_braille'

class ToBrailleTest < Minitest::Test
  def setup
    @braille = ToBraille.new
  end

  def test_a_returns_braille
    result = @braille.convert_letter_to_braille("a")
    assert_equal ["0.","..",".."], result
  end

  def test_single_letter_sentence
    result = @braille.convert_sentence_to_braille("a")
    assert_equal ["0.","..",".."], result
  end

  def test_two_letter_sentence
    result = @braille.convert_sentence_to_braille("ab")
    assert_equal ["0.0.","..0.","...."], result
  end
end
