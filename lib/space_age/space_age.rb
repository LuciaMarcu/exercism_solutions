class SpaceAge
  
    SECONDS_PER_YEAR = 31557600.00
    
    def initialize(seconds)
      @age = (seconds / SECONDS_PER_YEAR).round(2)
    end
  
    def on_earth
      @age
    end
  
    def on_mercury
      @age = (@age / 0.2408467).round(2)
    end
  
    def on_venus
      @age = (@age / 0.61519726).round(2)
    end
  
    def on_mars
      @age = (@age / 1.8808158).round(2)
    end
  
    def on_jupiter
      @age = (@age / 11.862615).round(2)
    end
  
    def on_saturn
      @age = (@age / 29.447498).round(2)
    end
  
    def on_uranus
      @age = (@age / 84.016846).round(2)
    end
  
    def on_neptune
      @age = (@age / 164.79132).round(2)
    end
  
end