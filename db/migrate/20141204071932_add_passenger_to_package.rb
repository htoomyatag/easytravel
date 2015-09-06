class AddPassengerToPackage < ActiveRecord::Migration

  def change
  	add_column :packages, :no_of_adult, :string
  	add_column :packages, :no_of_child, :string
  end

end
