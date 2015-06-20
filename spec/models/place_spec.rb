require 'rails_helper'

describe Place do
	it 'does not accept a short name under 3 characters' do
		place = Place.new name: 'HI'
		expect(place.save).to eq false
	end
end