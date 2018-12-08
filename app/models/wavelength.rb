class Wavelength
  RED_LDR = 850
  RED_LENGTH = 650

  class << self
    def convert(ldr)
      return unless ldr.present?
      (RED_LENGTH * ldr.to_f) / RED_LDR
    end

    def calculate(irc)
      .each do |element|

      end
    end
  end
end
