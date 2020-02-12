require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path(__dir__)
end

require_relative "config/application"

set :views, (proc { File.join(root, "app/views") })
set :bind, '0.0.0.0'



get '/' do
  # TODO
  # 1. fetch posts from database.
  # 2. Store these posts in an instance variable
  # 3. Use it in the `app/views/posts.erb` view

  erb :home # Do not remove this line
end

get '/about' do
  # TODO
  # 1. fetch posts from database.
  # 2. Store these posts in an instance variable
  # 3. Use it in the `app/views/posts.erb` view

  erb :about # Do not remove this line
end

get '/ford' do

  erb :ford # Do not remove this line
end

get '/hamaca' do

  erb :hamaca # Do not remove this line
end

get '/artyque' do

  erb :artyque # Do not remove this line
end

get '/ford2' do

  erb :for2 # Do not remove this line
end


