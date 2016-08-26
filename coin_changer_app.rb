require "sinatra"

get "/" do #getting information from the server and pushing it the browser.
	erb :get_name
end

post "/name" do #taking the information from the browser and posting it to the server. 
	name = params[:user_name]
	redirect "/coin_changer?user_name=" + name
end

get "/coin_changer" do
	name = params[:user_name]
	erb :get_change, :locals => {:your_name => name}
end

# post "/coin_changer" do
	
# end