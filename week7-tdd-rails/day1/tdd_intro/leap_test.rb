require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative 'leap'

class LeapYearTest < MiniTest::Test

  def test_leap_year
    assert_equal true, leap_year?(2000)
  end

  def test_not_leap_year
    assert_equal false, leap_year?(1997)
  end

  def test_empty_string_as_input
    assert_equal false, leap_year?('')
  end
end

# without MinitestReporter, this will output as ...
# S - skip
# . - passed