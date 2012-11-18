class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.text :message
      t.integer :user_id
      t.integer :link_id
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  def down
    drop_table :comments
  end
  end
end
