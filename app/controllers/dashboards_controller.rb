# frozen_string_literal: true

class DashboardsController < ApplicationController
  def index
    @concentrations = Measurement.last.concentrations
  end
end
