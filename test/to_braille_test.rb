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
    result = @braille.add_braille_to_lines("a")
    assert_equal ["0.","..",".."], result
  end

  def test_two_letter_sentence
    result = @braille.add_braille_to_lines("ab")
    assert_equal ["0.0.","..0.","...."], result
  end

  def test_z_!
    result = @braille.add_braille_to_lines("z!")
    assert_equal ["0...", ".000", "000."], result
  end

  def test_two_words_to_braille
    result = @braille.add_braille_to_lines("ah ha")
    assert_equal ["0.0...0.0.", "..00..00..", ".........."], result
  end

  def test_0_to_braille
    result = @braille.add_braille_to_lines("0")
    assert_equal [".00..0", ".0...0", "00..00"], result
  end

end
