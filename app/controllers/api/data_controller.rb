class Api::DataController < Api::ApiBaseController
  def create
    irc = Wavelength.convert(params[:_json])
    render json: { ibn: Measurement.calculate(irc) }
  end
end
