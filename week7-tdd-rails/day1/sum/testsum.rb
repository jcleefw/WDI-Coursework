require_relative 'sum'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

describe Dim do

  it 'work out sum of 3 under 10' do
    @dim = Dim.new([5],10)
    @dim.sum.must_equal 15
  end

  it 'work out sum 3 and 5 under 10' do
    @dim = Dim.new([3,5],10)
    @dim.sum.must_equal 33
  end

  it 'work out sum of 3 even if 2 exact number' do
    @dim = Dim.new([3,3],10)
    @dim.sum.must_equal 18
  end

  it 'work out sum of 3 for numbers upto 30' do
    @dim = Dim.new([3],30)
    @dim.sum.must_equal 165
  end

  #bonus
  it 'work out sum of any number of numbers 3,4,5' do
    @dim = Dim.new([3,4,5,6],30)
    @dim.sum.must_equal 472
  end
end

