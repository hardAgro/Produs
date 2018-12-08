class CreateSummernoteImages < ActiveRecord::Migration[5.0]
  def change
    create_table :summernote_images do |t|
      t.string :file

      t.timestamps
    end
  end
end
