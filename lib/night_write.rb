require'./lib/to_braille'
require'pry'

class NightWrite
  attr_reader :read, :file_name, :braille_converter

  def initialize(file_name = "./test/example_text/example.txt")
    @file_name = file_name
    @braille_converter = ToBraille.new
  end

  def read
    @read ||= File.read(file_name).strip
  end

  def convert
    braille_converter.add_braille_to_lines(read)
  end

  # def format_results(array_of_lines)
  #   first_line = array_of_lines[0].join
  #   second_line = array_of_lines[1].join
  #   third_line = array_of_lines[2].join
  #
  #
  #   array_of_lines[0].join.length
  #   array_of_lines[0].split
  # end

end
