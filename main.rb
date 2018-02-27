require 'sinatra'
require 'pony'
require 'json'

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
	Pony.mail to: 'swsw872@gmail.com', subject: "#{@first_name} #{@last_name}", body: %(
		#{@first_name} #{@last_name}

		And the message is:
		#{@body}
	) 
	erb :contacted
end

# get '/ajax-json' do
# 	#controller logic
# 	[{name: 'Sammy'}, {name: 'Amber'}, {name: 'Casey'}, {name: 'Ried'}].to_json
# end 

# get '/ajax-html' do
# 	@name = 'Sammy'
# 	erb :thank_you, layout: false
# end