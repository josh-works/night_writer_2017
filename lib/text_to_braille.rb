require 'pry'
class TextToBraille
  attr_accessor :line0, :line1, :line2
  # 0 => raised dot
  # . => unraised space
  BRAILLEALPHABET = {
    "a" => ["0.","..",".."], "b" => ["0.","0.",".."], "c" => ["00","..",".."], "d" => ["00",".0",".."],
    "e" => ["0.",".0",".."], "f" => ["00","0.",".."], "g" => ["00","00",".."], "h" => ["0.","00",".."],
    "i" => [".0","0.",".."], "j" => [".0","00",".."], "k" => ["0.","..","0."], "l" => ["0.","0.","0."],
    "m" => ["00","..","0."], "n" => ["0.",".0","0."], "o" => ["0.",".0","0."], "p" => ["00","0.","0."],
    "r" => ["0.","00","0."], "s" => [".0","0.","0."], "t" => [".0","00","0."], "u" => ["0.","..","00"],
    "v" => ["0.","0.","00"], "w" => [".0","00",".0"], "x" => ["00","..","00"], "y" => ["00",".0","00"],
    "z" => ["0.",".0","00"], "!" => ["..","00","0."], "'" => ["..","..","0."], "," => ["..","0.",".."],
    "-" => ["..","..","00"], "." => ["..","00",".0"], "?" => ["..","0.","00"], "capitals" => ["..", "..", ".0"],
    "numbers" => [".0", ".0", "00"], " " => ["..","..",".."]
   }

  def initialize
    @line0 = []
    @line1 = []
    @line2 = []
  end

  def print_phrase(phrase)
    phrase.split('').map do |letter|
      letter_to_braille(letter)
    end
    puts "#{line0.join()}" +  "\n#{line1.join()}" + "\n#{line2.join()}"
  end

  def letter_to_braille(letter)
    hash = BRAILLEALPHABET[letter]
    line0 << hash[0]
    line1 << hash[1]
    line2 << hash[2]
  end
end

# def encrypt_file(filename, rotation)
#
#   # create file handle to the input file
#   file = File.open(filename, "r")
#
#   # read text of input file
#   message_to_encrypt = file.read
#   encrypted_message = encrypt(message_to_encrypt, rotation)
#   output = File.open("#{filename}.#{rotation}.encrypted", "w")
#   output.write(encrypted_message)
#   output.close
#   puts "#{encrypted_message} | written to new file"
# end

# def decrypt_file(filename, rotation)
#     file = File.open(filename, "r")
#     message_to_decrypt = file.read
#     decrypted_message = decrypt(message_to_decrypt, rotation)
#     output = File.open("#{filename.gsub("encrypted", "decrypted")}", "w")
#     output.write(decrypted_message)
#     output.close
# end
#
# letter = TextToBraille.new
# braille = letter.print_letter("a")
# letter.combine_letters(braille)
