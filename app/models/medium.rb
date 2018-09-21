class Medium < ApplicationRecord
  belongs_to :animal

  enum type: [:photo, :video]
end
