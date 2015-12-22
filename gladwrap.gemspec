Gem::Specification.new do |gem|
  gem.authors       = ["Alan Clark"]
  gem.email         = ["alanjosephclark@gmail.com"]
  gem.description   = %q{Ruby cli for wrapping UI mockups in a device frame. Supports iPhone 6 (black & white), more devices coming soon. }
  gem.summary       = %q{More info here: https://github.com/aclarkk/gladwrap.}
  gem.homepage      = "https://github.com/aclarkk/gladwrap"
  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables   = ["gladwrap"]
  gem.require_paths = ["lib"]
  gem.name          = "gladwrap"
  gem.version       = "1.2.5"
  gem.add_runtime_dependency "slop",["= 4.2.1"]
  gem.add_runtime_dependency "rmagick",["= 2.15.4"]
end
