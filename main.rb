require 'sinatra'
require 'pony'

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
post '/contact-us' do
	@first_name = params[:first_name]
	@last_name = params[:last_name]
	@body = params[:body]
	@email_address = params[:email_adress]
	@subject = params[:subject]
	Pony.mail(:to => 'swsw872@gmail.com', :from => @email_adress, :subject => @subject, :body => @body)
	erb :contacted
end