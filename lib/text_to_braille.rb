require 'pry'
require './FileReader'


class TextToBraille
  attr_accessor :line0, :line1, :line2, :filename, :reader
  BRAILLEALPHABET = {
    "a" => ["0.","..",".."], "b" => ["0.","0.",".."], "c" => ["00","..",".."], "d" => ["00",".0",".."],
    "e" => ["0.",".0",".."], "f" => ["00","0.",".."], "g" => ["00","00",".."], "h" => ["0.","00",".."],
    "i" => [".0","0.",".."], "j" => [".0","00",".."], "k" => ["0.","..","0."], "l" => ["0.","0.","0."],
    "m" => ["00","..","0."], "n" => ["00",".0","0."], "o" => ["0.",".0","0."], "p" => ["00","0.","0."],
    "q" => ["00","00","0."], "r" => ["0.","00","0."], "s" => [".0","0.","0."], "t" => [".0","00","0."],
    "u" => ["0.","..","00"], "v" => ["0.","0.","00"], "w" => [".0","00",".0"], "x" => ["00","..","00"],
    "y" => ["00",".0","00"], "z" => ["0.",".0","00"], "!" => ["..","00","0."], "'" => ["..","..","0."],
    "," => ["..","0.",".."], "-" => ["..","..","00"], "." => ["..","00",".0"], "?" => ["..","0.","00"],
    "capitals" => ["..", "..", ".0"], "numbers" => [".0", ".0", "00"], " " => ["..","..",".."]
   }

  def initialize
    @line0 = []
    @line1 = []
    @line2 = []
    @filename = nil
    binding.pry
    @reader = FileReader.new
    read_from_file
  end

  def print_phrase(phrase)
    phrase.split('').map do |letter|
      letter_to_braille(letter)
    end
    puts "#{line0.join()}" +  "\n#{line1.join()}" + "\n#{line2.join()}"
    print_to_file
  end

  def letter_to_braille(letter)
    hash = BRAILLEALPHABET[letter]
    line0 << hash[0]
    line1 << hash[1]
    line2 << hash[2]
  end

  def read_from_file
    @filename = ARGV[0]
    text = reader.read
    puts "retreieved '#{text}' from #{filename}"
    print_phrase(text)
  end

  def print_to_file
    File.open("#{filename.slice(0..-5)}.braille.txt", "a+") do |file|
      file << line0.join() + "\n"
      file << line1.join() + "\n"
      file << line2.join() + "\n"
    end
  end
end

TextToBraille.new
