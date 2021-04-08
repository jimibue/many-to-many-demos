class Vaccination < ApplicationRecord
  belongs_to :user
  belongs_to :vaccine
end
