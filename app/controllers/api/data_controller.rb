class Api::DataController < Api::ApiBaseController
  def create
    render json: { wavelength: Wavelength.calculate(params[:_json]) }
  end
end
