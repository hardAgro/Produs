# frozen_string_literal: true

class DashboardsController < ApplicationController
  def index
    @cobra = Python.run('produs.py')
  end
end
