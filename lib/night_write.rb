require'./lib/to_braille'

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

  def format_output
    arrays = braille_converter.combine_lines(convert)
    arrays.join("\n")
  end

  def write(file_name)
    File.open("#{file_name}", "w") do |file|
       file.write(format_output)
    end
  end
end
