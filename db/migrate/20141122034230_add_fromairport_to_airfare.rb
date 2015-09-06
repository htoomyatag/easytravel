class AddFromairportToAirfare < ActiveRecord::Migration
  def change
  	add_column :airfares, :fromairport, :string
  end
end
