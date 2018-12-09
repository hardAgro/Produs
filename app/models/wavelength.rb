class Wavelength
  RED_LDR = 850
  RED_LENGTH = 650

  class << self
    def convert(ldr)
      return unless ldr.present?
      (RED_LENGTH * ldr.to_f) / RED_LDR
    end

    def calculate(irc)
      Element.all.map do |element|
        result = element.intersection + element.slope * irc + element.error
        acceptable = result > element.inferior_limit && result < element.upper_limit # TODO: do something if value is not acceptable
        element.concentrations.create(value: result, acceptable: acceptable)
      end
    end
  end
end
