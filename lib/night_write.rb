require './lib/to_braille'
require'pry'

class NightWrite
  attr_reader :read, :file_name

  def initialize(file_name = "./test/example_text/example.txt")
    @file_name = file_name
    @braille_converter = ToBraille.new
  end

  def read
    @read ||= File.read(file_name).strip
  end

  def convert
    @braille_converter.add_braille_to_lines(read)
  end
end
