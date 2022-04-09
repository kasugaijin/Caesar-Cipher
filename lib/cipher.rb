# Caesar Cipher algo
# create array of string ordinals
# do not mutate if not a-z, otherwise mutate and handle overlap situations
class Cipher

  def encrypt(string, shift)
    encrypted = []
    input_array = string.downcase.chars.map! { |i| i.ord }
    input_array.each do |j|
      if j < 97 || j > 122
        encrypted.push(j)
      elsif j - shift < 97
        x = j - shift
        y = 97 - x
        encrypted.push(123 - y)
      else
        encrypted.push(j - shift)
      end
    end

    encrypted.map! { |k| k.chr }
    encrypted.join
  end
end
