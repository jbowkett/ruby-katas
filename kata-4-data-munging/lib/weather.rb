class Weather
  attr_reader :area, :min_temp, :max_temp
  def initialize(area, min_temp, max_temp)
    @area, @min_temp, @max_temp = area, min_temp, max_temp
  end
end
