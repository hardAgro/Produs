class Api::ApiBaseController < ActionController::Base
  # To allow only json request
  protect_from_forgery with: :null_session, if: Proc.new {|c| c.request.format.json? }
end
