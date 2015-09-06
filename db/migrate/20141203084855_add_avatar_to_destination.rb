class AddAvatarToDestination < ActiveRecord::Migration
  def self.up
    add_attachment :destinations, :avatar
  end

  def self.down
    remove_attachment :destinations, :avatar
  end
end
