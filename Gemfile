source 'https://rubygems.org'

gemspec

gem 'dry-types', '~> 0.12'

gem 'rom', '~> 4.2' do
  gem 'rom-core', '~> 4.2'
  gem 'rom-mapper', '~> 1.1'
  gem 'rom-repository', '~> 2.0', group: :tools
end

group :test do
  gem 'inflecto'
  gem 'codeclimate-test-reporter', require: false, platforms: :mri
  gem 'dry-struct', '~> 0.4'
  gem 'byebug', platforms: :mri
end

group :tools do
  gem 'rubocop'

  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-rubocop'
end
