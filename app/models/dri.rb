class Dri < ApplicationRecord
  belongs_to :element
  belongs_to :measurement

  def self.calculate(concentrations)
    concentrations.map do |concentration|
      values = (concentrations - [concentration]).pluck(:value)
      sum = values.sum { |x| concentration.value / x }
      inverse_sum = values.sum { |x| x / concentration.value }
      Dri.new(value: sum - inverse_sum, element: concentration.element)
    end
  end
end
