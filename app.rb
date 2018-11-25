require 'rubygems'
require 'bundler/setup'

# myapp.rb
require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  output = "Hello world! Version 3. Now with test-suite! </br>"
  env_string = JSON.pretty_generate(ENV.to_a).gsub!("\n",'</br>')
  output += "Environment: </br> #{env_string} </br>"
  output
end

get '/devops' do
  'rule the world'
end

get "/google" do
  require "httparty"
  HTTParty.get('http://google.com', follow_redirects: true).body
end
