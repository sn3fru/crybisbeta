class Category < ActiveRecord::Base
  has_many :sub_categories
  has_and_belongs_to_many :questions
  has_and_belongs_to_many :tags

  acts_as_votable 
end
