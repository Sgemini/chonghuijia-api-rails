require 'rails_helper'

RSpec.describe Animal, type: :model do
	let!(:adopted_animal) { Animal.create(name: 'animal1', is_adopted: true) }
	let!(:not_adopt_animal) { Animal.create(name: 'animal2', is_adopted: false) }

	describe 'scope #waiting_for_adopt' do
		it 'get all not adopt animals' do
			expect(Animal.waiting_for_adopt.count).to eq 1
		end
	end
end
