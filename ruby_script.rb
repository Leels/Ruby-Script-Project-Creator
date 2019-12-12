#!/usr/bin/env ruby
require('./lib/ruby_project_creator.rb')
require 'fileutils'
require 'bundle'

puts "Enter directory name:"
directory_name = gets.chomp

FileUtils.mkdir(directory_name)
FileUtils.cd(directory_name)
FileUtils.mkdir("lib")
FileUtils.mkdir("spec")
FileUtils.touch("lib/ruby_temp.rb")
FileUtils.touch("spec/ruby_temp_spec.rb")
FileUtils.touch("Gemfile")
