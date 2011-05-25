spec = Gem::Specification.new do |s|
  s.name = 'memcache-store-extensions'
  s.version = '0.0.1'
  s.summary = "Rails Memcache Store extensions providing matched deletion"
  s.description = %{Provides delete_matched for memcached store in Rails 3}
  s.files = Dir['lib/**/*.rb'] + Dir['spec/**/*.rb']
  s.require_path = 'lib'
  s.autorequire = 'builder'
  s.has_rdoc = false
  s.extra_rdoc_files = Dir['[A-Z]*']
  s.rdoc_options << '--title' <<  'memcache-store-extensions -- matched deletion'
  s.author = "James Kassemi"
  s.email = "jkassemi@gmail.com"
  s.homepage = "http://tweekedideas.com"
end
