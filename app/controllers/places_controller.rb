class PlacesController < ApplicationController
	def index
	end

	def index
		@places = Place.all
	end
end
