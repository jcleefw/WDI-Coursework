require_relative 'wordladder'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

describe WordLadder do

  it 'replace letter wont be same as original.' do
    @word = WordLadder.new("aloe")
    @word.find_chain.wont_equal "aloe"
  end

  it 'word will be split into array to prepare for replacement' do
    @word = WordLadder.new("aloe")
    @word.find_chain.must_be_kind_of Array
  end

  it 'word "aloe" will return array with 6 words and ordered alphabetically' do
    @word = WordLadder.new("aloe")
    @word.find_chain.must_equal ["alae", "alee", "alme", "alow", "floe", "sloe"]
  end

  it 'word "cold" will return array with 6 words and ordered alphabetically' do
    @word = WordLadder.new("cold")
    @word.find_chain.must_equal ["bold", "coed", "cola", "cole", "cols", "colt", "coly", "cord", "fold", "gold", "hold", "mold", "sold", "told", "wold"]
  end

  it 'find ladder that returns 33 words in the array' do
    skip
    @word = WordLadder.new("")
    @word.find_chain_thirty_three.must_equal "hello"
  end

end