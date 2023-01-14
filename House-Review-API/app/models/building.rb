class Building < ApplicationRecord
  has_many :apartments
  has_many :building_reviews
end
