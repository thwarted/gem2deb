#!/usr/bin/env ruby

require 'rubygems'
require 'rubygems/format'

gemname = unshift($ARGS)

format = Gem::Format.from_file_by_path(gemname)

puts format.spec.dependencies.map {|d| name.gsub("_", "-") + " (" + d.requirements.gsub("~>", ">=") + ")" }.join(", ")