def rom_num()
    num_letter = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I"
    }
end

def romany(n)
    roman = ""
     if n == 0 
            return roman 
        else 
        rom_num.each do |num, value|
            roman += value*(n / num)
            n = n % num
        end
        return roman
    end
end

def rev_romany()
end
   


