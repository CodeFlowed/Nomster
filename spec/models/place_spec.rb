require 'rails_helper'

describe Place do
	it 'does not accept a short name under 3 characters' do
		place = Place.new(name: 'HI', address: 'address', description: 'description')

		expect(place.save).to eq false 
	end

	it 'does not accept a blank address' do
		place = Place.new(name: 'name', address: '', description: 'description')

		expect(place.save).to eq false
	end
end