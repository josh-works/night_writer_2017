require 'minitest/autorun'
require 'minitest/pride'
require './lib/to_braille'

class ToBrailleTest < Minitest::Test
  def setup
    @braille = ToBraille.new
  end

  def test_a_returns_braille
    result = @braille.to_braille("a")
    assert_equal ["0.","..",".."], result
  end
end
