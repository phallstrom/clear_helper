# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clear_helper/version'

Gem::Specification.new do |gem|
  gem.name          = "clear_helper"
  gem.version       = ClearHelper::VERSION
  gem.authors       = ["Philip Hallstrom"]
  gem.email         = ["philip@pjkh.com"]
  gem.description   = %q{A Rails helper method to simplify generation of "clear" divs}
  gem.summary       = %q{ClearHelper is a simple method helper to make creating a "cleared" div simple and consistent across platforms.  You can specify whether you want to clear 'both', 'left', or 'right' and set the height of the div in any unit you want (defaults to pixels)}
  gem.homepage      = "https://github.com/phallstrom/clear_helper"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
