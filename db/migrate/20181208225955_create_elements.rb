class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.string :name
      t.decimal :slope
      t.decimal :intersection
      t.decimal :error

      t.timestamps
    end
  end
end
