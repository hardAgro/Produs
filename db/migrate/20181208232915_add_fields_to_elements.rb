class AddFieldsToElements < ActiveRecord::Migration[5.2]
  def change
    add_column :elements, :upper_limit, :decimal
    add_column :elements, :inferior_limit, :decimal
  end
end
