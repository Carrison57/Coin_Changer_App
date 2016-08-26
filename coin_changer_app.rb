require "sinatra"

get "/" do #being displayed to the server
	erb :get_name
end

post "/name" do #taking the information from the browser to the server. 
	name = params[:user_name]
end