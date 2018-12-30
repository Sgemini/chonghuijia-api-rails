class Animal < ApplicationRecord
  has_many :media

  enum gender: [:boy, :girl]
  enum animal_type: [:dog, :cat]
end
