#!/usr/bin/env ruby

require 'rubygems'
require 'rubygems/format'

gemname = ARGV.shift

format = Gem::Format.from_file_by_path(gemname)

puts format.spec.dependencies.select {|d| d.type == :runtime }.map {|d| "lib#{d.name.gsub("_", "-")}-ruby (#{d.version_requirements.to_s.gsub("~>", ">=")})" }.join(", ")