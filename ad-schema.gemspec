# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ad-schema/version"

Gem::Specification.new do |s|
  s.name        = "ad-schema"
  s.version     = AD::Schema::VERSION
  s.authors     = ["jcredding"]
  s.email       = ["TempestTTU@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  #s.add_runtime_dependency "ad-ldap" # TODO: lock down ad-ldap version

  s.add_development_dependency "assert",  "~>0.2.0"
  s.add_development_dependency "log4r",   "~>1.1.9"
  s.add_development_dependency "mocha",   "=0.9.12"
end
