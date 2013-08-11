
class FileParser
  attr_reader :parser
  def initialize(parser)
    @parser = parser
  end

  def parse_file(file)
    parsed_lines = Array.new
    file.each{| line | parsed_lines << parser.parse_line(line) }
    parsed_lines
  end
end
