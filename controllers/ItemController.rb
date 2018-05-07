class ItemController < ApplicationController

	# index route

	get '/' do 

		'Index route in Item Controller'	

	end




	# Add route

	get '/add' do

		@page = "Add Item"

		@action = "/items"

		@method = "POST"

		@placeholder = "Enter Item!"

		@value = ""

		@buttontext = "Add"



		erb :add_item 
	end
	
end		
