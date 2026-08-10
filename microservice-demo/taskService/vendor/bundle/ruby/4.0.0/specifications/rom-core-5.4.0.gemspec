# -*- encoding: utf-8 -*-
# stub: rom-core 5.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rom-core".freeze
  s.version = "5.4.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rom-rb/rom/issues", "documentation_uri" => "https://api.rom-rb.org/rom/", "mailing_list_uri" => "https://discourse.rom-rb.org/", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/rom-rb/rom/tree/master/core" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2025-01-08"
  s.description = "Persistence and mapping toolkit for Ruby".freeze
  s.email = "piotr.solnica+oss@gmail.com".freeze
  s.homepage = "http://rom-rb.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.1.0".freeze)
  s.rubygems_version = "3.6.2".freeze
  s.summary = "Ruby Object Mapper".freeze

  s.installed_by_version = "4.0.16".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.1".freeze])
  s.add_runtime_dependency(%q<dry-configurable>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<dry-core>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<dry-inflector>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<dry-initializer>.freeze, ["~> 3.2".freeze])
  s.add_runtime_dependency(%q<dry-struct>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<dry-types>.freeze, ["~> 1.6".freeze])
  s.add_runtime_dependency(%q<transproc>.freeze, ["~> 1.1".freeze])
end
