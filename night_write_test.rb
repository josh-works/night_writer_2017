gem 'minitest'
require 'minitest/autorun'

class NightWriteTest < Minitest::Test
  def test_a_returns_braille
    braille = NightWrite.new
    result = braille.to_braille("a")
    assert_equal ["0.", "0.", "0."], result
  end
end
