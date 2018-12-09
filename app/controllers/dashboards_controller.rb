# frozen_string_literal: true

class DashboardsController < ApplicationController
  def index
    # @cobra = Python.run('produs.py')
    # @macroNutrients = this.getMacroNutrients();
  end

  def getMacroNutrients()
    @desiredNutrients = ['n', 'p', 'k', 'mg']
    Element.all.map do |element|

    end
  end
end
