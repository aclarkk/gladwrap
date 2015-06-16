Gem::Specification.new do |gem|  
  gem.authors       = ["Alan Clark"]
  gem.email         = ["alanjosephclark@gmail.com"]
  gem.description   = %q{Take sketch exports, and wrap them in an iphone frame}
  gem.summary       = %q{}
  gem.homepage      = "http://alanclark.biz"

  # gem.files         = `git ls-files`.split($\)
  gem.files         = ["lib/gladwrap.rb","bin/gladwrap"]
  gem.executables   = ["gladwrap"]
  #gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gladwrap"
  gem.require_paths = ["lib"]
  gem.version       = "1.0.0.pre"
end 
