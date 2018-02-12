require 'sinatra'

get '/' do
	erb :home
end

get '/about' do
	erb :about
end

get '/features' do 
	erb :features
end
get '/contact' do  
	erb :contact
end