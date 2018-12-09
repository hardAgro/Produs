class Api::DataController < Api::ApiBaseController
  def create
    irc = Wavelength.convert(params[:_json])
    Measurement.calculate(current_user, irc)
  end
end
