class AddReferenceToDris < ActiveRecord::Migration[5.2]
  def change
    add_reference :dris, :measurement, foreign_key: true
  end
end
