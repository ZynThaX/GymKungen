class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.boolean :is_profile_album, :default => false
      t.integer :user_id,					 :null => false
      t.string :title
      t.text :info

      t.timestamps
    end
  end
end
