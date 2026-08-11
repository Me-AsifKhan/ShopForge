# -*- encoding: utf-8 -*-
# stub: rom-changeset 5.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rom-changeset".freeze
  s.version = "5.2.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rom-rb/rom/issues", "documentation_uri" => "https://api.rom-rb.org/rom/", "mailing_list_uri" => "https://discourse.rom-rb.org/", "source_code_uri" => "https://github.com/rom-rb/rom/tree/master/changeset" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2020-05-08"
  s.description = "rom-changeset adds support for preprocessing data on top of rom-rb repositories".freeze
  s.email = "piotr.solnica+oss@gmail.com".freeze
  s.homepage = "http://rom-rb.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Changeset abstraction for rom-rb".freeze

  s.installed_by_version = "4.0.16".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<dry-core>.freeze, ["~> 0.4".freeze])
  s.add_runtime_dependency(%q<rom-core>.freeze, ["~> 5.2".freeze])
  s.add_runtime_dependency(%q<transproc>.freeze, ["~> 1.0".freeze, ">= 1.1.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 11.2".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5".freeze])
end
