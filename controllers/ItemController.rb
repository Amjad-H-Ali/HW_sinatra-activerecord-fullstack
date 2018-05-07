class ItemController < ApplicationController

	# index route

	get '/' do 

		@item = Item.all

		@page = "Index of Items"

		erb :index_item




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




	post '/' do

		puts "============================"

		pp params


		puts "============================"

		pp	Item
		puts "============^^=Item Class=^^======"

		# Add something with active record

		@item = Item.new

		@item.title = params[:title]

		@item.user_id = 1 

		@item.save


		redirect '/items'

	end	
	
end		
