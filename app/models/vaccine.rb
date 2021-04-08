class Vaccine < ApplicationRecord
  has_many :vaccantations
  has_many :users, through: :vaccantations

  has_many :required_vaccinations
  has_many :users, through: :required_vaccinations
end
