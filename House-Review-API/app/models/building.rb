class Building < ApplicationRecord
  has_many :apartments, dependent: :destroy
  has_many :building_reviews, dependent: :destroy
end
