# -*- encoding: utf-8 -*-
require File.expand_path("../lib/yubinbang/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "yubinbang"
  s.version     = Yubinbang::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://rubygems.org/gems/yubinbang"
  s.summary     = "Japanese Postal Code Search / 郵便番号検索"
  s.description = "Do lookup based on Japanese Postal Code Database. "

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "yubinbang"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'

  s.add_dependency "fastercsv"
end
