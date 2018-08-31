class Animal < ApplicationRecord
  enum gender: [:boy, :girl]
  enum animal_type: [:dog, :cat]
end
