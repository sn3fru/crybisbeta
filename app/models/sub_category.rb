class SubCategory < ActiveRecord::Base
  belongs_to :category
  has_many :tags
end
