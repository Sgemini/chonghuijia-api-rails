class Animal < ApplicationRecord
  has_many :media

  enum gender: [:boy, :girl]
  enum animal_type: [:dog, :cat]

  scope :waiting_for_adopt, -> { where.not(is_adopted: true) }
  scope :search_animals, lambda { |animal_type = nil, gender = nil, size = nil|
    animals = order(id: :asc)
    animals = animals.where(animal_type: Animal.animal_types[animal_type]) if animal_type.present?
    animals = animals.where(gender: Animal.genders[gender]) if gender.present?
    animals = animals.where(size: size) if size.present?
    animals
  }

end
