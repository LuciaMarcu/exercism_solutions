class Pangram

  def self.pangram?(string)
    
    return false if string.empty?    
    letter_arr = string.downcase.gsub(/[\s+\-]/,"")

    ('a'..'z').each do |ch|
      return false unless letter_arr.include?(ch)  
    end
    
    true
end