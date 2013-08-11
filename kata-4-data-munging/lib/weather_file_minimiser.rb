require 'file_parser'
require 'minimiser'
require 'weather_parser'

class WeatherFileMinimiser

  attr_reader :file, :file_parser, :minimiser

  def initialize(file_name, file_parser, minimiser)
    @file = File.new(file_name)
    @file_parser = file_parser
    @minimiser = minimiser
  end


  def find_minimum_area
    weathers = file_parser.parse_file(file)
    minimiser.minimum_of(weathers)
  end
end

file_minimiser = WeatherFileMinimiser.new('../input-data/weather.dat', FileParser.new(WeatherParser.new()), Minimiser.new)
min_spread = file_minimiser.find_minimum_area
puts "area : #{min_spread.area} min : #{min_spread.min_temp} max : #{min_spread.max_temp}"
