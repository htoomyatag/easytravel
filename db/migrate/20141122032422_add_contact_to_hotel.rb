class AddContactToHotel < ActiveRecord::Migration
  def change
  	  add_column :hotels, :contact, :string
  end
end
