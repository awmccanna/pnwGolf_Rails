class Course < ApplicationRecord
  has_many :holes, dependent: :destroy
  validates :name, presence: true
  validates :zip, format: {with: /\d{5}/ }

end
