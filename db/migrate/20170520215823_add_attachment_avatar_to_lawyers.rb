class AddAttachmentAvatarToLawyers < ActiveRecord::Migration
  def self.up
    change_table :lawyers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :lawyers, :avatar
  end
end
