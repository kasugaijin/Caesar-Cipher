# Caesar Cipher algo
class Cipher
  
  # create array of string ordinals
  # do not mutate string values that are not 'a-z', push to final array
  # handle any string values that wrap over from 'z' to 'a'
  # mutate string values 'a-z'
  def encrypt(string, shift)
    encrypted = []
    #convert string to downcase and array of strings
    array = string.downcase.chars.map! { |i| i.ord }
    array.each do |j|
      if j < 97 || j > 122
        encrypted.push(j)
      elsif j - shift < 97
        x = j - shift
        y = 97 - x
        encrypted.push(122 - y)
      else
        encrypted.push(j - shift)
      end
    end

    encrypted.map! { |k| k.chr }
    encrypted.join
  end
end

test = Cipher.new
puts test.encrypt('testes yeah baby!!', 10)