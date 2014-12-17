class AddPerguntasToUsers < ActiveRecord::Migration
  def change
    add_column :users, :perguntas, :text
  end
end
