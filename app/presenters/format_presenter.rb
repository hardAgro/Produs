# frozen_string_literal: true

class FormatPresenter
  def self.cnpj(value)
    return if value.empty?

    "#{value[0, 2]}.#{value[2, 3]}.#{value[5, 3]}/#{value[8, 4]}-#{value[12, 2]}".strip
  end

  def self.cpf(value)
    "#{value[0, 3]}.#{value[3, 3]}.#{value[6, 3]}-#{value[9, 2]}".strip unless value.empty?
  end

  def self.pis(value)
    "#{value[0, 3]}.#{value[3, 5]}.#{value[8, 2]}-#{value[10, 1]}".strip unless value.empty?
  end

  def self.cep(value)
    "#{value[0, 5]}-#{value[5, 3]}".strip unless value.empty?
  end

  def self.phone(value)
    "(#{value[0, 2]}) #{value[3, 5]}-#{value[8, 4]}".strip unless value.empty?
  end
end
app / controllers / application_controller.rb
