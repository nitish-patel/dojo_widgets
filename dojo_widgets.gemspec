
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dojo_widgets/version"

Gem::Specification.new do |spec|
  spec.name          = "dojo_widgets"
  spec.version       = DojoWidgets::VERSION
  spec.authors       = ["Nitish Patel"]
  spec.email         = ["nitish.patel.08@gmail.com"]

  spec.summary       = %q{Wrapper around dijit controls for use with page-object gem.}
  spec.description   = %q{Wrapper around dijit controls for use with page-object gem.}
  spec.homepage      = "https://github.com/nitish-patel/dojo_widgets.git"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Since this gem is being created to be a wrapper around the dijit UI library,
  # enabling us to interact with elements within this library using page-object,
  # the page-object gem as been specified as a dependency below.
  # When this dojo_widgets gem is installed, the page-object gem will be installed
  # as well as a result of the dependency addition below.
  spec.add_dependency 'page-object', '>= 0.9.1'

  # The development dependencies below have been specified as developers who wish to
  # contribute will need the gems stated below. The below will be installed when the
  # dogo_widgets gem is installed.
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'cucumber', '>= 1.3.2'
  spec.add_development_dependency 'rspec', '>= 2.13'
end
