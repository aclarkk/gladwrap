Gem::Specification.new do |gem|  
  gem.authors       = ["Alan Clark"]
  gem.email         = ["alanjosephclark@gmail.com"]
  gem.description   = %q{Take sketch exports, and wrap them in an iphone frame}
  gem.summary       = %q{}
  gem.homepage      = "http://alanclark.biz"

  # gem.files         = `git ls-files`.split($\)
  gem.files         = ["lib/glad.rb","bin/glad"]
  gem.executables   = ["glad"]
  #gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "glad"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.7"
end 
