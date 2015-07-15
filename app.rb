require 'rubygems'
require 'bundler/setup'

# myapp.rb
require 'sinatra'

get '/' do
  'Hello world! Version 3. Now with test-suite!'
end
