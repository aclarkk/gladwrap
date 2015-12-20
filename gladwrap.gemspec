Gem::Specification.new do |gem|
  gem.authors       = ["Alan Clark"]
  gem.email         = ["alanjosephclark@gmail.com"]

  gem.description   = %q{Ruby cli for wrapping UI mockups in a device frame. Supports iPhone 6 (black & white), more devices coming soon. }
  gem.summary       = %q{More info here: https://github.com/aclarkk/gladwrap.}
  gem.homepage      = "https://github.com/aclarkk/gladwrap"

  gem.files         = `git ls-files`.split($\)
  # gem.files         = ["lib/gladwrap.rb","bin/gladwrap"]
  gem.executables   = ["gladwrap"]
  #gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gladwrap"
  gem.require_paths = ["lib"]
  gem.version       = "1.2.1"
end
