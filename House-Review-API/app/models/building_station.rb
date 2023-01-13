class BuildingStation < ApplicationRecord
  belongs_to :building
  belongs_to :station
  belongs_to :travel_method
end
