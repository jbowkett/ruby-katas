require 'rspec'
require 'minimiser'
require 'weather'

describe 'minimiser' do

  let(:spread_of_5) { Weather.new(1, 5, 10) }
  let(:spread_of_10) { Weather.new(1, 2, 12) }
  let(:weathers) { [spread_of_5, spread_of_10] }
  let(:subject){ Minimiser.new() }

  it 'should minimise the spread of many weather objects' do
    subject.minimum_of(weathers).should == spread_of_5
  end
end
