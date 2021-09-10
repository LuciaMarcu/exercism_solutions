class Luhn    
    def self.valid?(string)
        string = string.gsub(/\s+/,'')        
        if string.length <= 1 || string.scan(/\D/).empty? == false            
            false
        else       
            digits_arr = string.split('').reverse            
            digits_sum = 0
            digits_arr.each_with_index do |digit, index|
              if (index+1) % 2 == 0            
                  second_digit = double_digit(digit)
                  digits_sum += second_digit
              else
                  digits_sum += digit.to_i                  
              end
            end             
            if digits_sum % 10 == 0
              true
            else
              false
             end
        
        end
    end

    private
    
    def self.double_digit(dig)      
      doubled = dig.to_i * 2
      if doubled > 9
        doubled -= 9
      else
        doubled
      end
    end
    
        
end