class AddFeedbaackToUsers < ActiveRecord::Migration
  def change
    add_column :users, :feedbaack, :text
  end
end
