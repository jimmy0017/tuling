Gem::Specification.new do |s|
  s.name        = 'tuling'
  s.version     = '0.0.2'
  s.date        = '2016-03-16'
  s.summary     = %q{Tuling123 API Access Gem}
  s.description = %q{A simple gem to retrieve info from tuling123.com api(unofficial)}
  s.authors     = ["Jimmy Lin"]
  s.email       = 'jimmy0017@gmail.com'
  s.files       = ["lib/tuling.rb"]
  s.homepage    =
    'https://github.com/jimmy0017/tuling'
  s.license       = 'MIT'

  s.add_dependency 'httparty', '~> 0.13.7'


  s.add_development_dependency 'bundler', '~> 1.11', '>= 1.11.2'
  s.add_development_dependency 'rake' , '~> 11.1', '>= 11.1.1'
  s.add_development_dependency 'rspec', '~> 3.4'
end