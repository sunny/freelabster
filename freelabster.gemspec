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

  spec.add_dependency "http", "4.4.1"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.6"
  spec.add_development_dependency "rubocop", "~> 0.90.0"
end
