class Element < ApplicationRecord
  has_many :concentrations, dependent: :destroy
end
