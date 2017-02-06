gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/text_to_braille'

class TextToBrailleTest < Minitest::Test
  def test_a_returns_hash
    braille = TextToBraille.new
    a = braille.letter_to_braille('a')
    assert_equal braille.line0 + braille.line1 + braille.line2, ["0.", "..", ".."]
  end

  def test_initialize_starts_empty
    skip
    braille = TextToBraille.new

  end

  def test_lines_can_hold_one_braille_letter
    braille = TextToBraille.new
    a = braille.letter_to_braille(" ")
    assert_equal braille.line0+braille.line1+braille.line2, ["..", "..", ".."]
  end

  def test_input_to_braille_string
    skip
  end

  def test_whole_word_to_brail
    skip
    # initialize, make new word, print to file
  end

  def test_can_read_test_file
    skip
    # have "sample.txt", read it
  end

  def test_can_write_to_file
    skip
    # write to "sample_write.txt"
  end

  def test_file_read_to_write
    skip
    # ??
  end

end
