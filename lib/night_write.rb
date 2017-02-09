require'./lib/to_braille'
require 'pry'

class NightWrite
  attr_reader :read, :file_name, :braille_converter

  def initialize(file_name = "./test/example_text/ah.txt")
    @file_name = ARGV[0] || file_name
    @braille_converter = ToBraille.new
  end

  def read
    @read ||= File.read(file_name).strip
  end

  def convert
    p "retrieved '#{read}' from #{file_name}"
    braille_converter.add_braille_to_lines(read)
  end

  def format_output
    arrays = braille_converter.combine_lines(convert)
    arrays.join("\n")
  end

  def write
    output_name = ARGV[1] || "#{file_name.slice(0..-5)}_braille.txt"
    File.open("#{output_name}", "w") do |file|
       file.write(format_output)
    end
    p "Created #{output_name} containing #{read.length} characters."
  end
end

NightWrite.new.write
