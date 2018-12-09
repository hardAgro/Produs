class Element < ApplicationRecord
  has_many :concentrations, dependent: :destroy
  has_many :dris, dependent: :destroy
end
