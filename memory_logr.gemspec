
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "memory_logr/version"

Gem::Specification.new do |spec|
  spec.name          = "memory_logr"
  spec.version       = MemoryLogr::VERSION
  spec.authors       = ["Will Olson"]
  spec.email         = ["will.olson11@gmail.com"]

  spec.homepage      = "https://github.com/frankolson/memory_logr"
  spec.summary       = %q{Log memory consumption of ruby methods on *nix operating systems.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
