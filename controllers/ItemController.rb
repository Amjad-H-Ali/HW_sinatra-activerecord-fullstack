class ItemController < ApplicationController

	# index route

	get '/' do 

		'Index route in Item Controller'	

	end




	# Add route

	get '/add' do

		erb :add_item 
	end
	
end		
