class Isogram

    def self.isogram?(word)
        letter_arr = word.downcase.gsub(/[\s+\-]/,"").split("")
        unique_letters = letter_arr.uniq
        if letter_arr.length == unique_letters.length
            true
        else
            false
        end
    end

end