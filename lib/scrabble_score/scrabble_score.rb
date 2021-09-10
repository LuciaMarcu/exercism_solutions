class Scrabble

    def initialize(string)
        @string = string
    end

    LETTER_VALUE = {"a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1,
     "t" => 1, "d" => 2, "g" => 2, "b" => 3, "c" => 3, "m" => 3, "p" => 3, "f" => 4, "h" => 4, "v" => 4, 
     "w" => 4, "y" => 4, "k" => 5, "j" => 8, "x" => 8, "q" => 10, "z" => 10}
    
  
    def score
        final_score = 0
        if @string.nil? || @string.empty?
            final_score
        else
            letter_array = @string.downcase.split("")
            letter_array.each do |letter|
                if LETTER_VALUE.has_key?(letter)
                    final_score += LETTER_VALUE[letter]
                else
                    final_score
                end
            end        
        end
        final_score
    end

  def self.score(string)
      Scrabble.new(string).score
  end

end