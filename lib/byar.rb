##
# Byar is a Byar's approximation confidence interval tool with SMR calculation.
#
# Can be used with class-level methods or as instantiated object.
#
# Class-level example with observed value 100 and expected value 90:
#
#   Byar.upper(100, 90) # => 1.3514260807978444, equals to SMR of 135.1
#
# Object instance example with observed value 100 and expected value 90:
#
#   b = Byar.new(100)
#   b.upper_bound # => 121.628347271806
#   b.lower(90) # => 0.9040199067337297, equals to SMR of 90.4
#
class Byar
  ##
  # Z_VALUE defaults to 1.96 for 95% confidence interval
  #
  Z_VALUE = 1.96
  
  ##
  # Create new Byar approximation calculator for +obs+ observed cases
  def initialize(obs)
    @obs = obs
  end
  
  ##
  # Calculate SMR-like lower boundary (1 equals SMR of 100)
  # 
  # Give +obs+ observed and +exp+ expected values to return a lower SMR-like
  # boundary value (0 - Infinite)
  def self.lower(obs, exp)
    return nil if exp == 0
    lower_bound(obs).quo(exp)
  end
  
  ##
  # Calculate SMR-like upper boundary (1 equals SMR of 100)
  #
  # Give +obs+ observed and +exp+ expected values to return an upper SMR-like
  # boundary value (0 - Infinite)
  def self.upper(obs, exp)
    return nil if exp == 0
    upper_bound(obs).quo(exp)
  end
  
  ##
  # Calculate lower boundary for observed cases
  def self.lower_bound(obs, z_value = Z_VALUE)
    return 0 if obs == 0
    obs * (1 - 1.quo(9 * obs) - z_value.quo(3 * Math.sqrt(obs))) ** 3
  end
  
  ##
  # Calculate upper boundary for observed cases
  def self.upper_bound(obs, z_value = Z_VALUE)
    obs = obs + 1
    obs * (1 - 1.quo(9 * obs) + z_value.quo(3 * Math.sqrt(obs))) ** 3
  end

  def self.z_value=(value)
    @z_value = value
  end
  
  def self.z_value
    @z_value ||= Z_VALUE
  end
  
  ##
  # Give lower SMR-like boundary for +expected+ cases
  def lower(expected)
    self.class.lower(@obs, expected)
  end
  
  ##
  # Give upper SMR-like boundary for +expected+ cases
  def upper(expected)
    self.class.upper(@obs, expected)
  end
  
  ##
  # Give lower boundary for observed value
  def lower_bound
    self.class.lower_bound(@obs, z_value)
  end
  
  ##
  # Give upper boundary for observed value
  def upper_bound
    self.class.upper_bound(@obs, z_value)
  end
  
  ##
  # Give object's Z value, with fallback to Class variable or Z_VALUE
  def z_value
    @z_value ||= self.class.z_value
  end
  
  ##
  # Set custom Z value for this Byar instance
  def z_value=(value)
    @z_value = value
  end
  
end