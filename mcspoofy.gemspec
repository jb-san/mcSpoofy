# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','mcspoofy','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'mcspoofy'
  s.version = Mcspoofy::VERSION
  s.author = 'Jonathan'
  s.email = 'Jonathan.borg.frodin@gmail.com'
  s.homepage = 'http://jb-san.github.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Easily spoof your MAC address'
# Add your other files here if you make them
  s.files = %w(
bin/mcspoofy
lib/mcspoofy/version.rb
lib/mcspoofy.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','mcspoofy.rdoc']
  s.rdoc_options << '--title' << 'mcspoofy' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'mcspoofy'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.4')
end
