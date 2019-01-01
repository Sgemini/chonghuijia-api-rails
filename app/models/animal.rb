class Animal < ApplicationRecord
  has_many :media

  enum gender: [:boy, :girl]
  enum animal_type: [:dog, :cat]

  scope :waiting_for_adopt, -> { where.not(is_adopted: true) }
end
