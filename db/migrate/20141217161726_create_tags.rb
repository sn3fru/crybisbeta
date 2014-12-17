class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tags
      t.references :sub_category, index: true

      t.timestamps
    end
  end
end
