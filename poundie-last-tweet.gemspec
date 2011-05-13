# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{poundie-last-tweet}
  s.version = "0.0.4"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Pat Nakajima}]
  s.date = %q{2011-05-13}
  s.files = ["lib/poundie-last-tweet.rb"]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.0}
  s.summary = %q{A Poundie plugin to post last tweet from a given user}
  s.description = "A Poundie plugin to post last tweet from a given user"
  s.add_dependency("poundie")
end
