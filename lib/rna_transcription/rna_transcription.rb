class Complement
  
    COMPLEMENTS = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}
  
    def self.of_dna(nucleo_of_rna)
      nucleo_of_dna = ''
      nucleo_of_rna.each_char do |ch|
        if COMPLEMENTS.has_key?(ch)
          nucleo_of_dna.concat(COMPLEMENTS[ch])
        end
      end
    nucleo_of_dna
    end

end