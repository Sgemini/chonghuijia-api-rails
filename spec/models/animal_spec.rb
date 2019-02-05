require 'rails_helper'

RSpec.describe Animal, type: :model do
	let!(:adopted_animal) { Animal.create(name: 'animal1', is_adopted: true) }
	let!(:not_adopt_animal) { Animal.create(name: 'animal2', is_adopted: false) }

	let!(:animal_girl) { Animal.create(name: 'animal3', gender: 'girl', size: 'big') }
	let!(:animal_boy) { Animal.create(name: 'animal4', gender: 'boy') }

	let!(:small_animal) { Animal.create(name: 'animal5', size: 'small') }
	let!(:big_animal) { Animal.create(name: 'animal6', size: 'big') }

	let!(:dog) { Animal.create(name: 'dog', animal_type: 'dog') }
	let!(:cat) { Animal.create(name: 'cat', animal_type: 'cat', gender: 'boy') }	


	describe 'scope #waiting_for_adopt' do
		it 'get all not adopt animals' do
			expect(Animal.waiting_for_adopt.count).to eq 1
		end
	end

	describe '#search_animals' do
		it 'get dog animals' do
			expect(Animal.search_animals('dog').count).to eq 1
		end

		it 'get all big animals' do
			expect(Animal.search_animals(nil, nil, 'big').count).to eq 2
		end

		it 'get all boy and dog animals' do
			expect(Animal.search_animals('dog', 'boy', nil).count).to eq 0	
		end

		it 'get all animals' do
			expect(Animal.search_animals.count).to eq 8
		end
	end
end
