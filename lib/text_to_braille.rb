require 'pry'
require './braille.rb'


class TextToBraille
  attr_accessor :line0, :line1, :line2, :filename, :char_count, :text

  def initialize
    @line0 = []
    @line1 = []
    @line2 = []
    @filename = ARGV[0]
    @text = File.read(filename).chomp
    @char_count = text.length
    puts "... retrieved '#{text}' from #{filename} \n"
    print_phrase(text)
  end

  def print_phrase(phrase)
    phrase.split('').map.with_index do |letter, index|
      if letter.upcase == letter && letter =~ /[\w]/
        letter_to_braille("capitals")
        letter_to_braille(letter.downcase)
      elsif letter =~ /[\d]/
        letter_to_braille("numbers") if phrase[index-1] =~ /[^d]/
        letter_to_braille(letter)
        letter_to_braille("numbers") if phrase[index+1] =~ /[^d]/
      end
    end
    puts "#{line0.join()}" +  "\n#{line1.join()}" + "\n#{line2.join()}"
    print_to_file
  end

  def letter_to_braille(letter)
    hash = Braille::BRAILLEALPHABET[letter]
    line0 << hash[0]
    line1 << hash[1]
    line2 << hash[2]
  end

  def print_to_file
    if ARGV[1].nil?
      output_name = filename.slice(0..-5) + "_braille.txt"
    else
      output_name = ARGV[1]
    end
    File.open(output_name, "a+") do |file|
      file << line0.join() + "\n"
      file << line1.join() + "\n"
      file << line2.join() + "\n"
      puts "^ encoded to #{output_name}"
      puts "created #{output_name} containing #{char_count} characters."
    end
  end
end

TextToBraille.new
