require "sinatra"
require_relative "new_coin_changer.rb"

get "/" do #getting information from the server and pushing it the browser.
	erb :get_name
end

post "/name" do #taking the information from the browser and posting it to the server. 
	name = params[:user_name]
	redirect "/coin_changer?user_name=" + name
end

get "/coin_changer" do
	name = params[:user_name] #The name and value in the form go into a params hash. 
	erb :get_change, :locals => {:your_name => name}
end

post "/coin_changer" do
	name = params[:user_name]
	change = params[:user_change]
	change = change.to_i
	#generate_change(change)
	returned_change = generate_change(change)

	"This is your change #{returned_change}"
end