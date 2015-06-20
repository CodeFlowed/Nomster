require 'rails_helper'

describe Place do

  it 'has a name' do
    place = Place.new name: 'My favorite place'
    expect(place.name).to eq 'My favorite place'
  end
end
