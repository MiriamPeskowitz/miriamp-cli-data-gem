# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Start_Your_Day/version"

Gem::Specification.new do |spec|
  spec.name          = "Start_Your_Day"
  spec.version       = StartYourDay::VERSION
  spec.authors       = ["'Miriam Peskowitz'"]
  spec.email         = ["'miriam5000@gmail.com'"]

  spec.summary       = %q{ Fun things to start your day.}
  spec.description   = %q{ CLI app that features scraping.}
  spec.homepage      = "https://github.com/MiriamPeskowitz/Start-Your-Day-CLI/blob/miriam/README.md."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "require_all"
  #spec.add_development_dependency "open-URI"
end
