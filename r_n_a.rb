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
    elsif n.class != Integer
        return "That's wrong! try again"
    end
    rom_num.each do |num, value|
        roman += value*(n / num)
        n = n % num
    end
    return roman
end

def rev_rom_num()
    num_letter1 = {
        900 => "CM",
        400 => "CD",
        90 => "XC",
        40 => "XL", 
        9 => "IX", 
        4 => "IV",
        1000 => "M",
        500 => "D", 
        100 => "C",
        50 => "L", 
        10 => "X", 
        5 => "V", 
        1 => "I"
    }
end

def rev_romany(l)
    roman = 0
    if l == ""
           return roman 
    elsif l.class != String
        return "you can't do that!"
    end
    temp = l.split('')
    temp.each do |v|
        if !rev_rom_num.has_value?(v)
            return "you can't do that!"
        end
    end

       rev_rom_num.each do |value, num|
            roman += value * l.scan(/#{num}/).count()
           l = l.sub(/#{num}/, "")
       end
    return roman
end

   

   


