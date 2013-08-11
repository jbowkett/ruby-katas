require 'weather'

class WeatherParser

  def parse_line(line)
    parts = line.split(' ')
    area = parts[0]
    max = parts[1]
    min = parts[2]
    Weather.new(area, min.to_i, max.to_i)
  end
end
