require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'

class NightWriteTest < Minitest::Test

  def test_a_returns_a_array
    write = NightWrite.new("./test/example_text/h.txt")
    assert_equal ["0.", "00", ".."], write.convert
  end

  def test_incoming_file_has_no_new_line_chars
    write = NightWrite.new
    refute write.read.include?("\n")
  end

  def test_incoming_file_can_be_read
    write = NightWrite.new("./test/example_text/example.txt")
    assert_equal "hello world", write.read
  end

  def test_can_read_several_files
    message1 = NightWrite.new("./test/example_text/file1.txt")
    message2 = NightWrite.new("./test/example_text/file2.txt")
    message3 = NightWrite.new("./test/example_text/file3.txt")
    assert_equal "this is 1", message1.read
    assert_equal "this is 2", message2.read
    assert_equal "this is 3", message3.read
  end

  def test_short_file_returns_braille
    write = NightWrite.new("./test/example_text/h.txt")
    assert_equal ["0.","00",".."], write.convert
  end

  def test_can_join_char_to_braille
    write = NightWrite.new("./test/example_text/h.txt")
    braille = write.convert
    assert_equal ["0.", "00", ".."], braille
  end

  def test_store_two_chars_in_braille
    write = NightWrite.new("./test/example_text/ah.txt")
    result = write.convert
    assert_equal ["0.0.", "..00", "...."], result
  end
  
end
