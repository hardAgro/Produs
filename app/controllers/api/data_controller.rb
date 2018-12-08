class Api::DataController < Api::ApiBaseController
  def create
    render json: { ldr: Wavelength.calculate(params[:_json]) }
  end
end
