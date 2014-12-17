class AddAcuraciaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :acuracia, :decimal
  end
end
