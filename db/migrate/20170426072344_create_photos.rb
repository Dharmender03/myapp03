class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :body
      t.attachment :image
      t.integer :album_id

      t.timestamps
    end
  end
end
