require 'sinatra/base'

require 'sinatra/activerecord'

require './models/ItemModel'

require './models/UserModel'





# Controllers
require './controllers/ApplicationController'

require './controllers/ItemController'



# Routes
map('/') {
	run ApplicationController
}



map('/items') {
	run ItemController
}



