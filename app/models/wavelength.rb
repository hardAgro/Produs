class Wavelength
  RED_LDR = 850
  RED_LENGTH = 650

  def self.calculate(ldr)
    return unless ldr.present?
    (RED_LENGTH * ldr.to_f) / RED_LDR
  end
end
