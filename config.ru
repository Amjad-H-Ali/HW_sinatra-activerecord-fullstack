require 'sinatra/base'



# Controllers
require './controllers/ApplicationController'



# Routes
map('/') {
	run ApplicationController
}



