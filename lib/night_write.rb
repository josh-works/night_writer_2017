require './lib/to_braille'
require'pry'

class NightWrite
  attr_reader :read

  def initialize(file = "./test/example_text/example.txt")
    @read = File.read(file).strip
  end

  def convert(letter)
    results = letter.split('').map do |lttr|
      ToBraille.new.to_braille(lttr)
    end
    results

    # if letter.length == 1
    #   ToBraille.new.to_braille(letter)
    # elsif letter.length > 1
    #   letter.split("").each do |letr|
    #     ToBraille.new.to_braille(letr)
    #   end
    # end
  end

  def join_string(array)
    array.join("\n")
  end

end
