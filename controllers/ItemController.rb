class ItemController < ApplicationController



# Must be logged in (similar to middleware in express)

before do
	if !session[:logged_in]
		session[:message] = "You must be logged in to do that"
		redirect '/user/login'
	end
end








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





	# Create Route

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


		session[:message] = "You added item \##{@item.id}."


		redirect '/items'

	end	




	# Delete route


	delete '/:id' do

		@item = Item.find params[:id]

		@item.destroy

		session[:message] = "You deleted item \##{@item.id}"


		redirect '/items'

	end
	





	# edit route
	get '/edit/:id' do


		@item = Item.find params[:id]


		@page = "Edit Item #{@item.id}" 

		erb :edit_item
	end	





	# update route


	patch '/:id' do


		# like i said -- lots of ways to do this.  
		# http://api.rubyonrails.org/classes/ActiveRecord/FinderMethods.html
		# http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html#method-i-where


		@items = Item.where(id: params[:id]) 

		# note: .where method gives us an array (Why?). So we must index. 
		# Might there have been a more appropriate query method to use 
		# instead of .where ?


		@item = @items[0]

		@item.title = params[:title]
		@item.save


		session[:message] = "You updated item \##{@item.id}"


		redirect '/items'


	end








	
end		
