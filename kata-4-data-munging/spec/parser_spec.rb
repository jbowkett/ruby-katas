require 'rspec'
require 'weather_parser'

describe 'Parser' do
  let(:parser) { WeatherParser.new }
  let(:subject) { parser.parse_line(line) }
  context 'for a correctly formatted line' do
    let(:line) { '   1  88    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5' }
    it 'should get the area correct' do
      subject.area.should == '1'
    end

    it 'should get min temperature correct' do
      subject.min_temp.should == 59
    end

    it 'should get max temperature correct' do
      subject.max_temp.should == 88
    end
  end

  context 'for a different line' do
    let(:line) { '   2  79    63    71          46.5       0.00         330  8.7 340  23  3.3  70 28 1004.5'}
    it 'should get the area correct' do
      subject.area.should == '2'
    end

    it 'should get min temperature correct' do
      subject.min_temp.should == 63
    end

    it 'should get max temperature correct' do
      subject.max_temp.should == 79
    end
  end
end
