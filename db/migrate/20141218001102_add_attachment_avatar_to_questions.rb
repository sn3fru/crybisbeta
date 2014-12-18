class AddAttachmentAvatarToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :questions, :avatar
  end
end
