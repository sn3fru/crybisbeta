class Tag < ActiveRecord::Base
  belongs_to :sub_category
  acts_as_votable 
end
