class Measurement < ApplicationRecord
  has_many :concentrations, dependent: :destroy

  def self.calculate(irc)
    concentrations = Wavelength.calculate(irc)
    dris = Dri.calculate(concentrations)
    ibn = dris.pluck(:value).sum / dris.count
    Measurement.create(ibn: ibn)
  end
end
