class Measurement < ApplicationRecord
  has_many :concentrations, dependent: :destroy
  has_many :dris, dependent: :destroy

  def self.calculate(irc)
    concentrations = Wavelength.calculate(irc)
    dris = Dri.calculate(concentrations)
    ibn = dris.sum { |dri| dri.value.abs } / 11
    measurement = Measurement.create(ibn: ibn)
    concentrations.each { |c| c.update_attribute(:measurement_id, measurement.id) }
    dris.each { |d| d.update_attribute(:measurement_id, measurement.id) }
    measurement.ibn
  end
end
