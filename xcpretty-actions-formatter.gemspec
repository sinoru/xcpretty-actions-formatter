# coding: utf-8

Gem::Specification.new do |spec|
    spec.name          = "xcpretty-actions-formatter"
    spec.version       = "0.0.1"
    spec.authors       = ["Jaehong Kang"]
    spec.email         = ["sinoru@me.com"]
    spec.description   =
    %q{
    Formatter for xcpretty customized to provide pretty output on GitHub Actions
    }
    spec.summary       = %q{xcpretty custom formatter for GitHub Actions}
    spec.homepage      = "https://github.com/sinoru/xcpretty-actions-formatter"
    spec.license       = "Apache-2.0"
    spec.required_ruby_version = "~> 2.0"
    spec.files         = [
        "README.md",
        "LICENSE",
        "lib/actions_formatter.rb",
        "bin/xcpretty-actions-formatter"]
    spec.executables   = ["xcpretty-actions-formatter"]
    spec.require_paths = ["lib"]
    spec.add_dependency "xcpretty", "~> 0.2"
  
    spec.add_development_dependency "bundler", "~> 1.3"
    spec.add_development_dependency "rake"
    spec.add_development_dependency "bacon", "~> 1.2"
  end
  