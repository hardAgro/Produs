# frozen_string_literal: true

class SearchAddressController < ActionController::Base
  respond_to :json

  def new
    render json: BuscaEndereco.cep(params[:cep])
  end
end
