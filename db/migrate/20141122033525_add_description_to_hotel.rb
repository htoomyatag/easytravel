class AddDescriptionToHotel < ActiveRecord::Migration
  def change
  	add_column :hotels, :description, :string
  end
end
