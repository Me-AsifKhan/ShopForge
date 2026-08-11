# -*- encoding: utf-8 -*-
# stub: rom 5.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rom".freeze
  s.version = "5.4.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rom-rb/rom/issues", "documentation_uri" => "https://api.rom-rb.org/rom/", "mailing_list_uri" => "https://discourse.rom-rb.org/", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/rom-rb/rom" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2025-11-20"
  s.description = "Persistence and mapping toolkit for Ruby".freeze
  s.email = "piotr.solnica+oss@gmail.com".freeze
  s.homepage = "http://rom-rb.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.6.2".freeze
  s.summary = "Persistence and mapping toolkit for Ruby".freeze

  s.installed_by_version = "4.0.16".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rom-changeset>.freeze, ["~> 5.4".freeze])
  s.add_runtime_dependency(%q<rom-core>.freeze, ["~> 5.4".freeze])
  s.add_runtime_dependency(%q<rom-repository>.freeze, ["~> 5.4".freeze, ">= 5.4.3".freeze])
end
