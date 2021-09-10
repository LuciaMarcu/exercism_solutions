class Raindrops

    def self.convert(nr)
        factor = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
        string = ""
        factor.each do |k, v|
            if nr % k == 0
                string.concat(v)   
            end
        end
        if string.empty?
            string = nr.to_s
        else
            string
        end
    end
end