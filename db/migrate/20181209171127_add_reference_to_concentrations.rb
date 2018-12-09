class AddReferenceToConcentrations < ActiveRecord::Migration[5.2]
  def change
    add_reference :concentrations, :measurement, foreign_key: true
  end
end
