class ApplicationController < Sinatra::Base

	require 'bundler'

	Bundler.require()



	ActiveRecord::Base.establish_connection(

		:adapter => 'postgresql',
		:database => 'item'

	)



	# Middleware

		# MethodOverride

	use Rack::MethodOverride
	set :method_override, true	










	set :views, File.expand_path('../views/', File.dirname(__FILE__)) 






	get '/' do

		@page = 'Hello'

		erb :hello 
		
	end


end





