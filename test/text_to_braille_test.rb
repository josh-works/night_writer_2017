gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/text_to_braille'

class TextToBrailleTest < Minitest::Test
  def test_a_returns_hash
    braille = TextToBraille.new
    a = braille.print_letter('a')
    b = braille.print_letter('b')
    space = braille.print_letter(' ')
    assert_equal a, ["0.","..",".."]
    assert_equal b, ["0.","0.",".."]
    assert_equal space, ["..","..",".."]
  end



end
