class PlacesController < ApplicationController
	def index
	end

	def index
		@places = Place.all.page(params[:page]).per(10)
	end

	def new
		@place = Place.new
	end
end
