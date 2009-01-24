require 'test/unit'
require '0001'

class Problem0001Tests < Test::Unit::TestCase
  def test_known
    assert_equal(solve(0,10), 23)
  end
  def test_answer
    assert_equal(solve(0,1000), 233168)
  end
end
