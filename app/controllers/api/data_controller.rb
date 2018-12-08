class Api::DataController < Api::ApiBaseController
  def create
    render json: { received: params }
  end
end
