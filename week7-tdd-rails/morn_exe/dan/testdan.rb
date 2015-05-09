require_relative 'dan'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

describe Dan do

  before do
    @dan = Dan.new
  end
  it 'Say something to Dan' do
    #@dan = Dan.new
    @dan.answer("Say something").must_equal "Sure."
  end

  it 'Ask Dan a question' do
    #@dan = Dan.new
    @dan.answer("What the crap?").must_equal "Whatever."
  end

  it 'SHOUT AT DAN' do
    #@dan = Dan.new
    @dan.answer("ANSWER ME").must_equal "Woah, chill out!"
  end

  it 'dont say anything to him' do
    #@dan = Dan.new
    @dan.answer("").must_equal "Fine. Be that way!"
  end

  it 'sentences starts with bro' do
    #@dan = Dan.new
    @dan.answer("Bro, leet speak").must_equal "l33t sP34k"
  end

end