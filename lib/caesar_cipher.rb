def caesar_cipher(string, n)
 
  res = ""
  s = string
  
  string.each_byte do |byte|
  
    for i in 1..n
      if byte >= "a".ord && byte <= "z".ord || byte >= "A".ord && byte <= "Z".ord
        byte += n
        res += byte.chr
      else
        res += byte.chr
      end
    end
     
  end
  
  return res

end

puts caesar_cipher("a", 25)
