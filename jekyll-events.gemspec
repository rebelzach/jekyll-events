# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-events/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-events"
  spec.version       = Jekyll::Events::VERSION
  spec.authors       = ["Zach Starkebaum"]
  spec.email         = ["zach@relevantwalk.com"]
  spec.description   = %q{Lets you create posts that represent future events. They're post's but in the future!}
  spec.summary       = %q{Simple event posts for Jekyll}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'jekyll', "> 1.2.0"
  spec.add_development_dependency "bundler", "~> 1.3"
end
