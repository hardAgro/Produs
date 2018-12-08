class CreateSituations < ActiveRecord::Migration[5.2]
  def change
    create_table :situations do |t|
      t.references :plant, foreign_key: true
      t.float :spectrum
      t.string :description

      t.timestamps
    end
  end
end
