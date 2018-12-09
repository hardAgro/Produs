class Concentration < ApplicationRecord
  belongs_to :user
  belongs_to :element
  belongs_to :measurement
end
