require 'rubygems'
require 'sinatra'


get '/' do
  host = ENV['VMC_APP_HOST']
  port = ENV['VMC_APP_PORT']
  "<h1>Hello from Cloud Foundry via: #{host}:#{port}</h1>"
end
