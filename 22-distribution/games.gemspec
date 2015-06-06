Gem::Specification.new do |s|
  s.name              = "games"
  s.version           = "0.1.0"
  s.author            = "The Pragmatic Studio"
  s.email             = "support@pragmaticstudio.com"
  s.summary           = "Plays and reviews movies"
  s.homepage          = "http://pragmaticstudio.com"
  s.description       = File.read(File.join(File.dirname(__FILE__), "README"))
  s.files             = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files        = Dir["spec/**/*"]
  s.executables       = ["studio_game"]
  s.license           = "MIT"
  s.required_ruby_version = ">=1.9"
  s.add_development_dependency "rspec", "~> 0"
end