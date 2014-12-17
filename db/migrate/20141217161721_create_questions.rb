class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.integer :bounty
      t.string :prospect
      t.references :user, index: true

      t.timestamps
    end
  end
end
