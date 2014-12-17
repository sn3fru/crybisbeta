class CreateUsersUsers < ActiveRecord::Migration
  def change
    create_table :users_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :user, index: true
    end
  end
end
