class CreateCategoriesTags < ActiveRecord::Migration
  def self.up
    create_table :categories_tags, :id => false do |t|
    	t.references :category
    	t.references :tag
    end
  end
end
