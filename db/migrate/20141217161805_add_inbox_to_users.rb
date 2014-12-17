class AddInboxToUsers < ActiveRecord::Migration
  def change
    add_column :users, :inbox, :text
  end
end
