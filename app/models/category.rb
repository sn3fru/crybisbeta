class Category < ActiveRecord::Base
  has_many :sub_categories
  acts_as_votable 
end
