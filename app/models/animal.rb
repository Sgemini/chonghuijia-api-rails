class Animal < ApplicationRecord
  has_many :media

  accepts_nested_attributes_for :media, :allow_destroy => true

  enum gender: [:boy, :girl]
  enum animal_type: [:dog, :cat]
end
