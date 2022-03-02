p "To encrypt your message enter 'cipher(string, integer)' where 'string' and integer are a 
string and number of your choice e.g., cipher('hello world', 5)"

  def cipher(string, shift)
    #empty arrays for use in loops below
    ord_array = []
    cipher_ord_array = []
    cipher_array = []

    #convert string to downcase and array of strings
    string_array = string.downcase.chars
    
    #create array of string ordinals
    for i in string_array
      ord_array.push(i.ord)
    end

    #first push i not equal 'a' - 'z' to final product, no mutation
    #second wrap from a to z in case i - shift is a nominal below 'a'
    #last if wrap not needed, push i - shift 
    for i in ord_array
      if i < 97 || i > 122
      cipher_ord_array.push(i)
      elsif i - shift < 97
        x = i - shift
        y = 97 - x
        cipher_ord_array.push(122 - y)
      else cipher_ord_array.push(i - shift)
      end
    end

    for i in cipher_ord_array
      cipher_array.push(i.chr)
    end

    p "this is your string '#{string}'"
    p "which gets turned into an array: #{string_array}"
    p "which is turned into ordinal numbers #{ord_array}"
    p "and then shifted based on your number #{cipher_ord_array}"
    p "and finally turned back into a new cipher string #{cipher_array}"
    p "the final encrypted message is '#{cipher_array.join("")}'"

  end

  cipher("this is my string", 8)

 