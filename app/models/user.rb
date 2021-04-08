class User < ApplicationRecord
    # has_many :user_streaks
    # has_many :streaks, through: :user_streaks

    # if role is holder
    has_many :vaccantations
    has_many :vaccines, through: :vaccantations

   # if role is verifier
    has_many :required_vaccinations
    has_many :vaccines, through: :required_vaccinations
end
