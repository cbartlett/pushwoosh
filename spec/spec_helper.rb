require 'rubygems'
require 'bundler/setup'
require 'pushwoosh'
require 'vcr'
require 'webmock'
require 'json'
require 'rspec/its'

VCR.configure do |c|
  #the directory where your cassettes will be saved
  c.cassette_library_dir = 'spec/vcr'
  # your HTTP request service. You can also use fakeweb, webmock, and more
  c.hook_into :webmock
end

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end
