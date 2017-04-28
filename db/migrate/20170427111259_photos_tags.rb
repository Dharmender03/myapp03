class PhotosTags < ActiveRecord::Migration[5.0]
  def change
  	create_table :photos_tags, id: false do |t|
      #t.belongs_to :photo, index: true
     # t.belongs_to :tag, index: true
       t.integer :photo_id
       t.integer :tag_id
    end
  end
end
