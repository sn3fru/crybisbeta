class AddInteressesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :interesses, :string
  end
end
