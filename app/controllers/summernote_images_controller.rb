# frozen_string_literal: true

class SummernoteImagesController < ActionController::Base
  def create
    image = SummernoteImage.new(file: params[:file])
    render json: { url: image.file.url }, status: :ok if image.save
  end
end
