# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_promo_slots'
  s.version     = '1.0.0'
  s.summary     = 'Promo Slots Extension for Spree'
  s.description = 'Spree extension for adding promotional slots to the homepage'
  s.required_ruby_version = '>= 1.9.3'

  s.authors           = ['Stuart Bates']
  s.email             = 'stuart@builtbyclick.com'
  s.homepage          = 'http://www.builtbyclick.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.0.0'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails', '~> 2.7'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'spree_auth_devise'
  s.add_development_dependency 'sqlite3'
end