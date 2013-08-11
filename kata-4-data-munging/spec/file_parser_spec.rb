require 'rspec'
require 'file_parser'
require 'weather_parser'

describe 'file_parser' do

  let(:weather_parser) { WeatherParser.new }
  let(:subject) { FileParser.new(weather_parser) }
  let(:lines) { [
      "3  77    55    66          39.6       0.00         350  5.0 350   9  2.8  59 24 1016.8",
      "4  77    59    68          51.1       0.00         110  9.1 130  12  8.6  62 40 1021.1"
  ] }
  let(:file) { lines }
  it 'should create the correct amount of weather objects' do
    subject.parse_file(file).count.should == 2
  end

  it 'should correctly parse the minimum temperatures' do
    subject.parse_file(file)[0].min_temp.should == 55
    subject.parse_file(file)[1].min_temp.should == 59
  end
end
