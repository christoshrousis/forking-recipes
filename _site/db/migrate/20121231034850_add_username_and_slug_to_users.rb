class AddUsernameAndSlugToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :slug, :string

    add_index :users, :slug, :unique => true
  end
end
