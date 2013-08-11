require 'rspec'
require 'weather_parser'

describe 'Parser' do
  let(:line) {'   1  88    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5'}
  let(:parser) { WeatherParser.new }
  let(:subject){ parser.parse_line(line) }

  it 'should parse a valid line' do
    subject.area.should == '1'
    subject.min_temp.should == 59
    subject.max_temp.should == 88
  end
end
