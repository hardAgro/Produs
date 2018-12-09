class Dri < ApplicationRecord
  belongs_to :element

  def self.calculate(concentrations)
    concentrations.each do |concentration|
      values = (concentrations - [concentration]).pluck(:value)
      sum = values.sum { |x| concentration.value / x }
      inverse_sum = values.sum { |x| x / concentration.value }
      Dri.create(value: sum - inverse_sum, element: concentration.element)
    end
  end
end
