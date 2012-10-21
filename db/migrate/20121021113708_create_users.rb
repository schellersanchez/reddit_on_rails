class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string      :username
      t.string      :email
      t.timestamps  :created_at
      t.timestamps  :updated_at
    end
  end

  def down
    drop_table :users
  end
end
