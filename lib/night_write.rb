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

  def write(file_name)
    File.open("#{file_name}", "w") do |file|
       file.write("this is the shit")
    end
  end
end
