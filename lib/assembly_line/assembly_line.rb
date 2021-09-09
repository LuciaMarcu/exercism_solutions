class AssemblyLine
  
  CARS_PER_HOUR = 221  
  @net_prod
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour    
    prod_based_speed = @speed * CARS_PER_HOUR  

    if @speed.between?(1, 4)
      @net_prod = prod_based_speed * 100 / 100.0      
    elsif @speed.between?(5, 8)
      @net_prod = prod_based_speed * 90 / 100.0      
    elsif @speed == 9
      @net_prod = prod_based_speed * 80 / 100.0      
    else
      @net_prod = prod_based_speed * 77 / 100.0      
    end

    @net_prod
  end

  def working_items_per_minute
      production_rate_per_hour
      items_per_min = @net_prod / 60
      items_per_min.to_i    
  end
end