class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :body
      t.string :proposta
      t.integer :value
      t.string :prospect
      t.references :user, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
