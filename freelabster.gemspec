lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "freelabster/version"

Gem::Specification.new do |spec|
  spec.name          = "freelabster"
  spec.version       = Freelabster::VERSION
  spec.authors       = ["Sunny Ripert"]
  spec.email         = ["sunny@sunfox.org"]

  spec.summary       = "Send 3D models to freelabster.com"
  spec.description   = "Create carts on freelabster.com and send 3D files"
  spec.homepage      = "http://github.com/sunny/freelabster"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
                                        .reject { |f| f.match(%r{^(spec)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "http", "2.0.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.1"
  spec.add_development_dependency "rubocop", "~> 0.49.0"
end
