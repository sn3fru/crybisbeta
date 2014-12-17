class AddFormacaoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :formacao, :text
  end
end
