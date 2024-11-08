text = "HELLO!WORLD!!"

# フォントの定義（大きなフォント）
font = {
  "A" => [
    "  A  ",
    " A A ",
    "AAAAA",
    "A   A",
    "A   A"
  ],
  "B" => [
    "BBBB ",
    "B   B",
    "BBBB ",
    "B   B",
    "BBBB "
  ],
  "C" => [
    " CCC ",
    "C    ",
    "C    ",
    "C    ",
    " CCC "
  ],
  "D" => [
    "DDDD ",
    "D   D",
    "D   D",
    "D   D",
    "DDDD "
  ],
  "F" => [
    "FFFFF",
    "F    ",
    "FFFF ",
    "F    ",
    "F    "
  ],
  "G" => [
    " GGG ",
    "G    ",
    "G  GG",
    "G   G",
    " GGG "
  ],
  "I" => [
    "IIIII",
    "  I  ",
    "  I  ",
    "  I  ",
    "IIIII"
  ],
  "J" => [
    "JJJJJ",
    "  J  ",
    "  J  ",
    "J J  ",
    " JJ  "
  ],
  "K" => [
    "K   K",
    "K  K ",
    "KKK  ",
    "K  K ",
    "K   K"
  ],
  "M" => [
    "M   M",
    "MM MM",
    "M M M",
    "M   M",
    "M   M"
  ],
  "N" => [
    "N   N",
    "NN  N",
    "N N N",
    "N  NN",
    "N   N"
  ],
  "P" => [
    "PPPP ",
    "P   P",
    "PPPP ",
    "P    ",
    "P    "
  ],
  "Q" => [
    " QQQ ",
    "Q   Q",
    "Q Q Q",
    "Q  QQ",
    " QQQQ"
  ],
  "R" => [
    "RRRR ",
    "R   R",
    "RRRR ",
    "R  R ",
    "R   R"
  ],
  "S" => [
    " SSS ",
    "S    ",
    " SSS ",
    "    S",
    " SSS "
  ],
  "T" => [
    "TTTTT",
    "  T  ",
    "  T  ",
    "  T  ",
    "  T  "
  ],
  "U" => [
    "U   U",
    "U   U",
    "U   U",
    "U   U",
    " UUU "
  ],
  "V" => [
    "V   V",
    "V   V",
    "V   V",
    " V V ",
    "  V  "
  ],
  "W" => [
    "W   W",
    "W   W",
    "W W W",
    "WW WW",
    "W   W"
  ],
  "X" => [
    "X   X",
    " X X ",
    "  X  ",
    " X X ",
    "X   X"
  ],
  "Y" => [
    "Y   Y",
    " Y Y ",
    "  Y  ",
    "  Y  ",
    "  Y  "
  ],
  "Z" => [
    "ZZZZZ",
    "   Z ",
    "  Z  ",
    " Z   ",
    "ZZZZZ"
  ],
  "E" => [
    "EEEEE",
    "E    ",
    "EEEEE",
    "E    ",
    "EEEEE"
  ],
  "H" => [
    "H   H",
    "H   H",
    "HHHHH",
    "H   H",
    "H   H"
  ],
  "L" => [
    "L    ",
    "L    ",
    "L    ",
    "L    ",
    "LLLLL"
  ],
  "O" => [
    " OOO ",
    "O   O",
    "O   O",
    "O   O",
    " OOO "
  ],
  "!" => [
    "  !!  ",
    "  !!  ",
    "  !!  ",
    "      ",
    "  !!  "
  
  ]
}

def display_text(text, font)
  # lines = ["", "", "", "", ""]
  lines = Array.new(font.values.first.size, "")

  # テキストを1文字ずつ処理して、linesに追加する
  text.each_char do |char|
    char_data = font[char]
    #puts char_data
    char_data.each_with_index do |line, index|
      lines[index] += line + " "
    end
  end

  # linesを出力する
  lines.each { |line| puts line }
end

display_text(text, font)