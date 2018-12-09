class Measurement < ApplicationRecord
  belongs_to :user

  has_many :concentrations, dependent: :destroy

  def self.calculate(current_user, irc)
    concentrations = Wavelength.calculate(irc)
    dris = Dri.calculate(concentrations)
    ibn = dris.sum(:value) / dris.count
    current_user.measurements.create(ibn: ibn)
  end
end
