class CreateDris < ActiveRecord::Migration[5.2]
  def change
    create_table :dris do |t|
      t.references :element, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
