Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'activerecord-redshift-adapter'
  s.version = '0.3.0'
  s.summary = 'Amazon Redshift adapter for ActiveRecord 5'
  s.description = 'Amazon Redshift _makeshift_ adapter for ActiveRecord 5.'
  s.license = 'MIT'

  s.author = ['Loyalty NZ']
  s.email = 'dawn.richardson@abletech.co.nz'
  s.homepage = 'https://github.com/LoyaltyNZ/activerecord-redshift-adapter'

  s.files = Dir.glob(['LICENSE', 'README.md', 'lib/**/*.rb'])
  s.require_path = 'lib'

  s.required_ruby_version = '>= 2.0.0'
  s.add_dependency 'pg'
  s.add_dependency 'activerecord', ['~> 5.0']
end
