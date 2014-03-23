Gem::Specification.new do |spec|
  spec.name = 'quicksilver actions'
  spec.version = '0.0.2'
  spec.author = 'succi0303'
  spec.email = 'succi0303@gmail.com'
  spec.homepage = 'https://github.com/succi0303/quicksilver_actions'
  spec.platform = Gem::Platform::RUBY
  spec.summary = 'Actions for Quicksilver'
  spec.description = 'Actions for Quicksilver'
  spec.files = `git ls-files`.split($/)
  spec.test_files = spec.files.grep(%r{^(spec)/})
  spec.require_path = ["actions", "actions/lib_qs_actions"]

  spec.add_dependency('nokogiri')
  spec.add_development_dependency('bundler')
  spec.add_development_dependency('growl')
  spec.add_development_dependency('guard')
  spec.add_development_dependency('guard-rspec')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('yard')
end
