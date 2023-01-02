class BuildingReview < ApplicationRecord
  belongs_to :building
  belongs_to :user
end
