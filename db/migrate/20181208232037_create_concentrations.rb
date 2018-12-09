class CreateConcentrations < ActiveRecord::Migration[5.2]
  def change
    create_table :concentrations do |t|
      t.references :element, foreign_key: true
      t.decimal :value
      t.boolean :acceptable

      t.timestamps
    end
  end
end
