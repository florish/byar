require 'test/unit'
require 'byar'

class ByarTest < Test::Unit::TestCase
  def test_lower
    assert_equal Byar.lower(23, 30).round(10), 0.4858414415
  end
  
  def test_upper
    assert_equal Byar.upper(23, 30).round(10), 1.1504345024
  end
  
  def test_observed_zero
    assert_equal Byar.lower(0, 10), 0
    assert_equal Byar.upper(0, 10).round(10), 0.3668097492
  end
  
  def test_expected_zero
    assert_equal Byar.lower(10, 0), nil
    assert_equal Byar.upper(10, 0), nil
  end
  
  def test_both_zero
    assert_equal Byar.lower(0, 0), nil
    assert_equal Byar.upper(0, 0), nil
  end
end
