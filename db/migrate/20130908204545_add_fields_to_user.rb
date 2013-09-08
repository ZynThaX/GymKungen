class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :profile_picture, :string
    add_column :users, :training_category, :integer
    add_column :users, :body_type, :integer
    add_column :users, :other_info, :text
    add_column :users, :gender, :integer
  end
end
