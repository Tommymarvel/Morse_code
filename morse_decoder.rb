@dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(letter)
  @dictionary[letter]
end

def decode_word(word)
  @arr = word.split
  @current_letter = ''
  @arr.each do |letter|
    @current_letter += decode_char(letter)
  end
  @current_letter
end

def decode_message(message)
  @message_arr = message.split('   ')
  @current_message = ''
  @message_arr.each do |word|
    @current_message += "#{decode_word(word)} "
  end
  @current_message.strip
end
decode_message('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
