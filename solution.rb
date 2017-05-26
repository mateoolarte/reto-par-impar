require "sinatra"

counter = 0
get "/" do
  @count = counter
  erb :index
end

post "/" do
  counter += params[:number].to_i
  @count = counter
  erb :index
end
