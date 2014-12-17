class SubCategory < ActiveRecord::Base
  belongs_to :category
  has_many :tags
  acts_as_votable 
end
