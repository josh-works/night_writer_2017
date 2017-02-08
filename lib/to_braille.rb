require 'pry'
class ToBraille

  def alphabet
    {
      "a" => ["0.","..",".."], "b" => ["0.","0.",".."], "c" => ["00","..",".."], "d" => ["00",".0",".."],
      "e" => ["0.",".0",".."], "f" => ["00","0.",".."], "g" => ["00","00",".."], "h" => ["0.","00",".."],
      "i" => [".0","0.",".."], "j" => [".0","00",".."], "k" => ["0.","..","0."], "l" => ["0.","0.","0."],
      "m" => ["00","..","0."], "n" => ["00",".0","0."], "o" => ["0.",".0","0."], "p" => ["00","0.","0."],
      "q" => ["00","00","0."], "r" => ["0.","00","0."], "s" => [".0","0.","0."], "t" => [".0","00","0."],
      "u" => ["0.","..","00"], "v" => ["0.","0.","00"], "w" => [".0","00",".0"], "x" => ["00","..","00"],
      "y" => ["00",".0","00"], "z" => ["0.",".0","00"], "!" => ["..","00","0."], "'" => ["..","..","0."],
      "," => ["..","0.",".."], "-" => ["..","..","00"], "." => ["..","00",".0"], "?" => ["..","0.","00"],
      "capitals" => ["..", "..", ".0"], "numbers" => [".0", ".0", "00"], " " => ["..","..",".."],
      "0" => [".0","00",".."], "1" => ["0.","..",".."], "2" => ["0.","0.",".."], "3" => ["00","..",".."],
      "4" => ["00",".0",".."], "5" => ["0.",".0",".."], "6" => ["00","0.",".."], "7" => ["00","00",".."],
      "8" => ["0.","00",".."], "9" => [".0","0.",".."]
    }
  end

  def convert_letter_to_braille(letter)
    if letter.upcase == letter && letter =~ /[a-zA-Z]/
      [alphabet["capitals"], alphabet[letter.downcase]]
    elsif letter =~ /[\d]/
      [alphabet["numbers"], alphabet[letter]]
    else
      alphabet[letter]
    end
  end

  def add_braille_to_lines(sentence)
    line0, line1, line2 = [], [], []
    # sentence.split(" ")
    # if that^ includes a capital letter/or world
    # downcase that, and put coorresponding single or double comma before it
    arrays = sentence.split('').map do |letter|
      convert_letter_to_braille(letter)
    end
    arrays.each do |subarray|
      line0 << subarray[0]
      line1 << subarray[1]
      line2 << subarray[2]
    end
  end

  def combine_lines(array_of_arrays)
    line0, line1, line2 = [], [], []
    array_of_arrays.each do |array|
      line0 << array[0]
      line1 << array[1]
      line2 << array[2]
    end
    [line0.join, line1.join, line2.join]
  end

  def format_results(array_of_lines)
    first_line = array_of_lines[0].join
    second_line = array_of_lines[1].join
    third_line = array_of_lines[2].join


    array_of_lines[0].join.length
    array_of_lines[0].split
  end

end
