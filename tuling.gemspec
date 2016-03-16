Gem::Specification.new do |s|
  s.name        = 'tuling'
  s.version     = '0.0.1'
  s.date        = '2016-03-16'
  s.summary     = "Tuling123 API Access Gem"
  s.description = "A simple gem to retrieve info from tuling123.com api(unofficial)"
  s.authors     = ["Jimmy Lin"]
  s.email       = 'jimmy0017@gmail.com'
  s.files       = ["lib/tuling.rb"]
  s.homepage    =
    'http://rubygems.org/gems/tuling'
  s.license       = 'MIT'

  s.add_dependency 'httparty'


  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency 'figaro'
end