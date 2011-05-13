# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{brocephalus}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Infochimps"]
  s.date = %q{2011-05-13}
  s.description = %q{Aggregate, route and query all the facts in your organization}
  s.email = %q{coders@infochimps.org}
  s.extra_rdoc_files = [
    "LICENSE.textile",
    "README.textile"
  ]
  s.files = [
    ".gitignore",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.textile",
    "README.textile",
    "Rakefile",
    "VERSION",
    "brocephalus.gemspec",
    "config/app.rb",
    "config/bootstrap.rb",
    "lib/boot.rb",
    "lib/brocephalus.rb",
    "lib/tasks/spec.rake",
    "spec/brocephalus_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/direct_mongo_db.rb",
    "spec/support/responder.rb",
    "spec/support/test_helper.rb"
  ]
  s.homepage = %q{http://infochimps.com/labs}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Aggregate, route and query all the facts in your organization}
  s.test_files = [
    "spec/brocephalus_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/direct_mongo_db.rb",
    "spec/support/responder.rb",
    "spec/support/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
      s.add_runtime_dependency(%q<gorillib>, ["~> 0.0.4"])
      s.add_runtime_dependency(%q<goliath>, [">= 0"])
      s.add_runtime_dependency(%q<icss>, [">= 0"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 0"])
      s.add_runtime_dependency(%q<em-synchrony>, [">= 0"])
      s.add_runtime_dependency(%q<em-http-request>, [">= 0"])
      s.add_runtime_dependency(%q<em-mongo>, ["~> 0.3.5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.12"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.7"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<rcov>, [">= 0.9.9"])
      s.add_runtime_dependency(%q<goliath>, [">= 0.9.1"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 1.0.0.beta.3"])
      s.add_runtime_dependency(%q<em-synchrony>, [">= 0.3.0.beta.1"])
      s.add_runtime_dependency(%q<em-http-request>, [">= 1.0.0.beta.3"])
      s.add_runtime_dependency(%q<em-mongo>, ["~> 0.3.5"])
      s.add_runtime_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
      s.add_runtime_dependency(%q<gorillib>, ["~> 0.0.4"])
      s.add_runtime_dependency(%q<icss>, ["~> 0.0.2"])
      s.add_runtime_dependency(%q<rack>, [">= 1.2.2"])
      s.add_runtime_dependency(%q<rack-contrib>, [">= 0"])
      s.add_runtime_dependency(%q<rack-respond_to>, [">= 0"])
      s.add_runtime_dependency(%q<async-rack>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.12"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.7"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<rcov>, [">= 0.9.9"])
      s.add_development_dependency(%q<spork>, ["~> 0.9.0.rc5"])
      s.add_development_dependency(%q<watchr>, [">= 0"])
    else
      s.add_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
      s.add_dependency(%q<gorillib>, ["~> 0.0.4"])
      s.add_dependency(%q<goliath>, [">= 0"])
      s.add_dependency(%q<icss>, [">= 0"])
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<em-synchrony>, [">= 0"])
      s.add_dependency(%q<em-http-request>, [">= 0"])
      s.add_dependency(%q<em-mongo>, ["~> 0.3.5"])
      s.add_dependency(%q<bundler>, ["~> 1.0.12"])
      s.add_dependency(%q<yard>, ["~> 0.6.7"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<rcov>, [">= 0.9.9"])
      s.add_dependency(%q<goliath>, [">= 0.9.1"])
      s.add_dependency(%q<eventmachine>, [">= 1.0.0.beta.3"])
      s.add_dependency(%q<em-synchrony>, [">= 0.3.0.beta.1"])
      s.add_dependency(%q<em-http-request>, [">= 1.0.0.beta.3"])
      s.add_dependency(%q<em-mongo>, ["~> 0.3.5"])
      s.add_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
      s.add_dependency(%q<gorillib>, ["~> 0.0.4"])
      s.add_dependency(%q<icss>, ["~> 0.0.2"])
      s.add_dependency(%q<rack>, [">= 1.2.2"])
      s.add_dependency(%q<rack-contrib>, [">= 0"])
      s.add_dependency(%q<rack-respond_to>, [">= 0"])
      s.add_dependency(%q<async-rack>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.12"])
      s.add_dependency(%q<yard>, ["~> 0.6.7"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<rcov>, [">= 0.9.9"])
      s.add_dependency(%q<spork>, ["~> 0.9.0.rc5"])
      s.add_dependency(%q<watchr>, [">= 0"])
    end
  else
    s.add_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
    s.add_dependency(%q<gorillib>, ["~> 0.0.4"])
    s.add_dependency(%q<goliath>, [">= 0"])
    s.add_dependency(%q<icss>, [">= 0"])
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<em-synchrony>, [">= 0"])
    s.add_dependency(%q<em-http-request>, [">= 0"])
    s.add_dependency(%q<em-mongo>, ["~> 0.3.5"])
    s.add_dependency(%q<bundler>, ["~> 1.0.12"])
    s.add_dependency(%q<yard>, ["~> 0.6.7"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<rcov>, [">= 0.9.9"])
    s.add_dependency(%q<goliath>, [">= 0.9.1"])
    s.add_dependency(%q<eventmachine>, [">= 1.0.0.beta.3"])
    s.add_dependency(%q<em-synchrony>, [">= 0.3.0.beta.1"])
    s.add_dependency(%q<em-http-request>, [">= 1.0.0.beta.3"])
    s.add_dependency(%q<em-mongo>, ["~> 0.3.5"])
    s.add_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
    s.add_dependency(%q<gorillib>, ["~> 0.0.4"])
    s.add_dependency(%q<icss>, ["~> 0.0.2"])
    s.add_dependency(%q<rack>, [">= 1.2.2"])
    s.add_dependency(%q<rack-contrib>, [">= 0"])
    s.add_dependency(%q<rack-respond_to>, [">= 0"])
    s.add_dependency(%q<async-rack>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.12"])
    s.add_dependency(%q<yard>, ["~> 0.6.7"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<rcov>, [">= 0.9.9"])
    s.add_dependency(%q<spork>, ["~> 0.9.0.rc5"])
    s.add_dependency(%q<watchr>, [">= 0"])
  end
end

