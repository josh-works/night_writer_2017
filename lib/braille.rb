class Braille

  def braille_alphabet
    {
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
  end
  def numbers(integer)
    case integer.integer?
    when integer == 0 then braille_alphabet["j"]
    when integer == 1 then braille_alphabet["a"]
    when integer == 2 then braille_alphabet["b"]
    when integer == 3 then braille_alphabet["c"]
    when integer == 4 then braille_alphabet["d"]
    when integer == 5 then braille_alphabet["e"]
    when integer == 6 then braille_alphabet["f"]
    when integer == 7 then braille_alphabet["g"]
    when integer == 8 then braille_alphabet["h"]
    when integer == 9 then braille_alphaabet["i"]
    end
  end
end
