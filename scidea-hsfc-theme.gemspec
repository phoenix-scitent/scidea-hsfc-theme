$:.push File.expand_path("../lib", __FILE__)

require "scidea/hsfc/theme/version"

Gem::Specification.new do |s|
  s.name        = 'scidea-hsfc-theme'
  s.version     = Scidea::HSFC::Theme::VERSION
  s.date        = '2012-03-22'

  s.summary     = "Custom Scidea theme for onlinehsfc.org"
  s.description = "Custom Scitent Scidea theme assets for onlinehsfc.org."

  s.authors     = ["Phoenix Team"]
  s.email       = ['phoenix@scitent.com']

  s.files       = Dir["{app,lib}/**/*"] + %w(MIT-LICENSE README.md Rakefile CHANGELOG)
 
  s.homepage    = 'https://github.com/phoenix-scitent/scidea-hsfc-theme'

  s.add_dependency('scidea')
end
