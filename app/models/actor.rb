class Actor < ApplicationRecord
    has_many :movies
    has_many :directors, through: :movies
end
