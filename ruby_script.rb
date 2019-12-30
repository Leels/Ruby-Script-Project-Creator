#!/usr/bin/env ruby
require 'fileutils'

FileUtils.cd("..")

puts "Enter directory name:"
directory_name = gets.chomp

FileUtils.mkdir(directory_name)
FileUtils.cd(directory_name)
FileUtils.mkdir("lib")
FileUtils.mkdir("spec")
FileUtils.mkdir("views")
FileUtils.mkdir("public")
FileUtils.touch("lib/ruby_temp.rb")
FileUtils.touch("spec/ruby_temp_spec.rb")
FileUtils.touch("app.rb")
FileUtils.touch("Gemfile")
FileUtils.touch("README.md")
ruby_temp = File.open('lib/ruby_temp.rb', 'w')
puts "Enter a class name: "
class_name = gets.chomp
ruby_temp.puts "class " + class_name +
"\n" + "  attr_accessor" +
"\n"
"\n" + "  def initialize()" +
"\n" + "    @" +
"\n" + "  end" +
"\n"
"\n" + "end"

gemfile = File.open('Gemfile', 'w')
gemfile.puts "source 'https://rubygems.org'" + "\n" + "\n" + "gem 'rspec'" + "\n" + "gem 'pry'" + "\n" + "gem 'bundle'"
