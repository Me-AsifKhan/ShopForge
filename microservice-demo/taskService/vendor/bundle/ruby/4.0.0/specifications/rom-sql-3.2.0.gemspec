# -*- encoding: utf-8 -*-
# stub: rom-sql 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rom-sql".freeze
  s.version = "3.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rom-rb/rom-sql/issues", "documentation_uri" => "https://api.rom-rb.org/rom-sql/", "mailing_list_uri" => "https://discourse.rom-rb.org/", "source_code_uri" => "https://github.com/rom-rb/rom-sql" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2020-01-11"
  s.description = "SQL databases support for ROM".freeze
  s.email = ["piotr.solnica@gmail.com".freeze]
  s.homepage = "http://rom-rb.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "SQL databases support for ROM".freeze

  s.installed_by_version = "4.0.16".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<sequel>.freeze, [">= 4.49".freeze])
  s.add_runtime_dependency(%q<dry-equalizer>.freeze, ["~> 0.2".freeze])
  s.add_runtime_dependency(%q<dry-types>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<dry-core>.freeze, ["~> 0.4".freeze])
  s.add_runtime_dependency(%q<rom-core>.freeze, ["~> 5.2".freeze, ">= 5.2.1".freeze])
  s.add_development_dependency(%q<appraisal>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5".freeze])
end
