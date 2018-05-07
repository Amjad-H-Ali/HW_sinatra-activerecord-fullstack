class ApplicationController < Sinatra::Base

	require 'bundler'

	Bundler.require()


	# Session

	enable :sessions



	ActiveRecord::Base.establish_connection(

		:adapter => 'postgresql',
		:database => 'item'

	)



	# Middleware

		# MethodOverride

	use Rack::MethodOverride
	set :method_override, true	









	# Views

	set :views, File.expand_path('../views/', File.dirname(__FILE__)) 



	# Public

	set :public_dir, File.expand_path('../public', File.dirname(__FILE__))






	get '/' do

		@page = 'Hello'

		erb :hello 
		
	end


end





