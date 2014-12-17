class AddRespostasToUsers < ActiveRecord::Migration
  def change
    add_column :users, :respostas, :text
  end
end
