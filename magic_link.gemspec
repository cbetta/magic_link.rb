Gem::Specification.new do |s|
  s.name        = 'magic_link'
  s.version     = '0.0.3'
  s.summary     = "Wrapper for the MagicLink API and a Rails engine"
  s.description = "Wrapper for the MagicLink API and a Rails engine"
  s.authors     = ["Cristiano Betta"]
  s.email       = 'cbetta@gmail.com'
  s.files       = ["lib/magic_link.rb"]
  s.homepage    = 'https://github.com/cbetta/magic_link.rb'
  s.license     = 'MIT'

  s.add_dependency "oauth2", ">= 1"
end
