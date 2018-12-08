class Wavelength
  RED_LDR = 850
  RED_LENGTH = 650

  class << self
    def convert(ldr)
      return unless ldr.present?
      (RED_LENGTH * ldr.to_f) / RED_LDR
    end

    def calculate(current_user, irc)
      Element.all.map do |element|
        result = element.intersection + element.slope * irc + element.error
        acceptable = result > element.inferior_limit && result < element.upper_limit
        element.concentrations.create(user: current_user, value: result, acceptable: acceptable)
        # TODO: do something if value is not acceptable
      end
    end
  end
end
