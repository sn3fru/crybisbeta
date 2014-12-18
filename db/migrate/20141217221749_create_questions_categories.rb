class CreateQuestionsCategories < ActiveRecord::Migration
  def change
    create_table :questions_categories, :id => false do |t|
    	t.reference :question
    	t.reference :category
    end
  end
end
