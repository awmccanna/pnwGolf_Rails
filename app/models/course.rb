class Course < ApplicationRecord
  validates :name, presence: true
  validates :zip, format: {with: /\d{5}/ }

end
