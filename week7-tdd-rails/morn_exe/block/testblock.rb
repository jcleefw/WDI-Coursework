require_relative 'block'
require 'minitest/autorun'
require 'minitest/reporters' # optional
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new # optional

describe Block do

  before do
    @block = Block.new
  end
  it 'can make word A' do
    #@dan = Dan.new
    @block.can_make_word("A").must_equal true
  end

  it 'can make word BARK' do
    @block.can_make_word("BARK").must_equal true
  end

  it 'can make word BOOK' do
    @block.can_make_word("BOOK").must_equal false
  end

  it 'can make word TREAT' do
    @block.can_make_word("TREAT").must_equal true
  end

  it 'cannot make word COMMON' do
    @block.can_make_word("COMMON").must_equal false
  end

  it 'can make word SQUAD' do
    @block.can_make_word("SQUAD").must_equal true
  end

  it 'can make word CONFUSE' do
    @block.can_make_word("CONFUSE").must_equal true
  end

end