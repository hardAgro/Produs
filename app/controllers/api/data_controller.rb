class Api::DataController < Api::ApiBaseController
  def create
    render json: { ldr: params[:_json] }
  end
end
