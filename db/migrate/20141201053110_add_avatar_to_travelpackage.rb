class AddAvatarToTravelpackage < ActiveRecord::Migration
 def self.up
    add_attachment :travel_packages, :avatar
  end

  def self.down
    remove_attachment :travel_packages, :avatar
  end
end
