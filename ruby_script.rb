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
FileUtils.touch("views/layout.erb")
FileUtils.touch("public/styles.css")
FileUtils.touch("app.rb")
FileUtils.touch("Gemfile")
FileUtils.touch("README.md")

ruby_temp = File.open('lib/ruby_temp.rb', 'w')
puts "Enter a class name: "
class_name = gets.chomp
ruby_temp.puts "class " + class_name +
"\n" + "  attr_accessor" +
"\n" +
"\n" + "  def initialize()" +
"\n" + "    @" +
"\n" + "  end" +
"\n" +
"\n" + "end"

gemfile = File.open('Gemfile', 'w')
gemfile.puts "source 'https://rubygems.org'" +
"\n" +
"\n" + "gem 'rspec'" +
"\n" + "gem 'pry'"

layout = File.open('views/layout.erb', 'w')
layout.puts "<!DOCTYPE html>" +
"\n" + "<html>" +
"\n" + "<head>" +
"\n" + "<title>" + directory_name + "</title>" +
"\n" + "<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>" +
"\n" + "<link rel='stylesheet' href='/styles.css'>" +
"\n" + "</head>" +
"\n" + "<body>" +
"\n" + "<%= yield %>" +
"\n" + "</body>" +
"\n" + "</html>"

ruby_temp_spec = File.open('spec/ruby_temp_spec.rb', 'w')
ruby_temp_spec.puts "require 'rspec'" +
"\n" + "require 'definition'" +
"\n" + "require 'ruby_temp'" +
"\n" + "require 'pry'" +
"\n" +
"\n" + "describe '#" + class_name + "' do" +
"\n" +
"\n" + "describe('') do" +
"\n" + "it("") do" +
"\n" + "expect(" + class_name + ".all).to(eq([]))" +
"\n" + "end" +
"\n" + "end" +
"\n" +
"\n" + "end"
