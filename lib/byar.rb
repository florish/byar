class Byar
  def self.lower(obs, exp)
    return nil if exp == 0
    return 0 if obs == 0
    obs.quo(exp) * (1 - 1.quo(9 * obs) - 1.96.quo(3 * Math.sqrt(obs))) ** 3
  end
  
  def self.upper(obs, exp)
    return nil if exp == 0
    obs = obs + 1
    (obs).quo(exp) * (1 - 1.quo(9 * (obs)) + 1.96.quo(3 * Math.sqrt(obs))) ** 3
  end
end