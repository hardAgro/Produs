class Api::DataController < Api::ApiBaseController
  def create
    irc = Wavelength.convert(params[:_json])
    Measurement.calculate(irc)
  end
end
