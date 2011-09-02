spec = Gem::Specification.new do |s|
  s.name = "byar"
  s.summary = "Byar's approximation"
  s.description = "Useful in combination with (H)SMR calculations"
  s.version = "0.0.1"
  s.authors = ['Floris Huetink']
  s.email = "floris@avocado.nl"
  s.homepage = "https://github.com/florish/byar"
  s.required_ruby_version = '>= 1.9.2'
  
  s.require_paths = ['lib']
  s.files = Dir['lib/**/**']
  s.has_rdoc = false
end