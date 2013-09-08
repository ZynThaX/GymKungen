class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :title
      t.integer :album_id,		     	:null => false

      t.timestamps
    end
  end
end
