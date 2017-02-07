require 'pry'
require './FileReader'

class NightWriter
  attr_reader :reader

  def initialize
    @reader = FileReader.new
    encode_file_to_braille
  end

  def encode_file_to_braille

    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    puts "ENCODING `#{input}` TO BRAILLE"
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string
  end
end

NightWriter.new
puts ARGV.inspect
