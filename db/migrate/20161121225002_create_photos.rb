class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment :image
      t.references :slide, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
