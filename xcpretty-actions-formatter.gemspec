require_relative 'lib/xcpretty/actions_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = "xcpretty-actions-formatter"
  spec.version       = Xcpretty::ActionsFormatter::VERSION
  spec.authors       = ["Jaehong Kang"]
  spec.email         = ["sinoru@me.com"]

  spec.summary       = %q{xcpretty custom formatter for GitHub Actions.}
  spec.description   = %q{Formatter for xcpretty customized to provide pretty output on GitHub Actions.}
  spec.homepage      = "https://github.com/sinoru/xcpretty-actions-formatter"
  spec.license       = "Apache-2.0"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sinoru/xcpretty-actions-formatter.git"
  spec.metadata["changelog_uri"] = "https://github.com/sinoru/xcpretty-actions-formatter/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "xcpretty", "~> 0.2"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
