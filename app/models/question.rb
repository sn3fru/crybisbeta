class Question < ActiveRecord::Base
  belongs_to :users
  has_many :answers
  has_and_belongs_to_many :categories

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


end
