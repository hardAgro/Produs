class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.references :user, foreign_key: true
      t.decimal :ibn

      t.timestamps
    end
  end
end
