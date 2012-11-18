class CreateVotes < ActiveRecord::Migration
  def up
    create_table :votes do |t|
      t.integer :user_id
      t.integer :link_id
      t.boolean :up

      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
  def down
    drop_table :votes
  end
end
