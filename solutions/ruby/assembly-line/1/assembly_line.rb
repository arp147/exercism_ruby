class AssemblyLine
  ORIGINAL_PROD_PER_HOUR = 221
  SUCC_RATE_LEVEL1 = 1.0
  SUCC_RATE_LEVEL2 = 0.9
  SUCC_RATE_LEVEL3 = 0.8
  SUCC_RATE_LEVEL4 = 0.77
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed >= 1 and @speed <=4
      @speed * ORIGINAL_PROD_PER_HOUR * SUCC_RATE_LEVEL1
    elsif @speed <= 8
      @speed * ORIGINAL_PROD_PER_HOUR * SUCC_RATE_LEVEL2
    elsif @speed == 9
      @speed * ORIGINAL_PROD_PER_HOUR * SUCC_RATE_LEVEL3
    else
      @speed * ORIGINAL_PROD_PER_HOUR * SUCC_RATE_LEVEL4
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
