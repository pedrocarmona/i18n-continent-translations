  # frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "i18n/continent/translations/version"

Gem::Specification.new do |spec|
  spec.name          = "i18n-continent-translations"
  spec.version       = I18n::Continent::Translations::VERSION
  spec.authors       = ["Pedro Carmona"]
  spec.email         = ["pcarmona1990@gmail.com"]

  spec.summary       = %q{translations for continents}
  spec.description   = %q{Add continent translations to you rails app.}
  spec.homepage      = "https://github.com/pedrocarmona/i18n-continent-translations"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rails", ">= 5.0", '< 5.3'
  spec.add_development_dependency "babelphish"
  spec.add_development_dependency "google-api-client"

  spec.add_dependency('i18n', '>= 0.9.3', '< 2')
  spec.add_runtime_dependency 'railties', '>= 5.0', '< 5.3'
end
