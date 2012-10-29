require 'test/unit'
require 'byar'
# :nodoc:
class ByarTest < Test::Unit::TestCase
  
  def test_lower
    assert_equal 0.4858414415, Byar.lower(23, 30).round(10)
  end
  
  def test_upper
    assert_equal 1.1504345024, Byar.upper(23, 30).round(10)
  end
  
  def test_lower_bound
    assert_equal 81.3617916060, Byar.lower_bound(100).round(10)
  end
  
  def test_upper_bound
    assert_equal 121.6283472718, Byar.upper_bound(100).round(10)
  end
  
  def test_observed_zero
    assert_equal 0, Byar.lower(0, 10)
    assert_equal 0.3668097492, Byar.upper(0, 10).round(10)
  end
  
  def test_expected_zero
    assert_equal nil, Byar.lower(10, 0)
    assert_equal nil, Byar.upper(10, 0)
  end
  
  def test_both_zero
    assert_equal nil, Byar.lower(0, 0)
    assert_equal nil, Byar.upper(0, 0)
  end
  
  def test_z_value
    assert_equal 1.96, Byar.z_value
    Byar.z_value = 88
    assert_equal 88, Byar.z_value
  end
  
  def test_obj_lower
    b = Byar.new(100)
    assert_equal 0.9040199067, b.lower(90).round(10)
  end
  
  def test_obj_upper
    b = Byar.new(100)
    assert_equal 1.3514260808, b.upper(90).round(10)
  end
  
  def test_obj_z_value
    class_val = Byar.z_value
    
    b = Byar.new(100)
    assert_equal class_val, b.z_value
    
    b.z_value = 3.44
    assert_equal 3.44, b.z_value
  end
end
