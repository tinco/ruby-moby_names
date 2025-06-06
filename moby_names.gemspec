# frozen_string_literal: true

require_relative "lib/moby_names/version"

Gem::Specification.new do |spec|
  spec.name = "moby_names"
  spec.version = MobyNames::VERSION
  spec.authors = ["Tinco Andringa"]
  spec.email = ["mail@tinco.nl"]

  spec.summary = "Ruby port of the Moby namesgenerator package."
  spec.description = "Provides a simple way to generate random Docker-like names (adjective_noun) in Ruby. This is a port of the Go package from moby/moby."
  spec.homepage = "https://github.com/tinco/moby_names"
  spec.license = "Apache-2.0"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tinco/moby_names"
  spec.metadata["changelog_uri"] = "https://github.com/tinco/moby_names/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
