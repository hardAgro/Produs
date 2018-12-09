class RemoveUserReferenceFromMeasurements < ActiveRecord::Migration[5.2]
  def change
    remove_reference :measurements, :user, foreign_key: true
  end
end
