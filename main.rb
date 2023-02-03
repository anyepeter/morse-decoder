def decode(text)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
    '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '' => ' '
  }
  morse_array = text.split(/(\s)/)
  morse_decode = []
  morse_array.each do |morse|
    morse_decode.push(morse_code[morse])
  end
  morse_decode.join
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
