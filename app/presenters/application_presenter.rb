# frozen_string_literal: true

class ApplicationPresenter
  extend Forwardable

  def helpers
    ApplicationController.helpers
  end

  def route
    Rails.application.routes.url_helpers
  end
end
