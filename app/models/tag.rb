class Tag < ActiveRecord::Base
  belongs_to :sub_category
  has_and_belongs_to_many :category
  acts_as_votable 
end
