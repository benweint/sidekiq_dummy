# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

exports_path = File.expand_path('./exports', File.dirname(__FILE__))

if File.exist?(exports_path)
  require exports_path
else
  puts "Did not file exports file at '#{exports_path}'"
end

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
