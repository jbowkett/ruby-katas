
class FileParser
  attr_reader :weather_parser
  def initialize(weather_parser = WeatherParser.new)
    @weather_parser = weather_parser
  end

  def parse_file(file)
    weather_lines = Array.new
    file.each{| line | weather_lines << weather_parser.parse_line(line) }
    weather_lines
  end
end
