require_relative 'config/environment'

class App < Sinatra::Base
	enable :sessions

	get '/' do 
		erb :index
	end

	post '/checkout' do 
		session[:item] = params[:item]
		
		"there is a(n) #{session[:item]} in your cart"
	end
end