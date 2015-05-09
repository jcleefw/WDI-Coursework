require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative 'leap'

describe LeapYear do

  before do
    @leap = LeapYear.new
  end

  it 'returns true when its a leap year' do
    LeapYear.leap_year?(2000).must_equal true
  end

  it 'returns false when its not a leap year' do
    @leap.leap_year?(1997).must_equal false
  end

  # it 'hello should return hi' do
  #   @leap.hello.must_equal 'hi'
  # end
end