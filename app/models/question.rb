class Question < ActiveRecord::Base
  belongs_to :users
  has_many :answers
  has_and_belongs_to_many :categories
end
