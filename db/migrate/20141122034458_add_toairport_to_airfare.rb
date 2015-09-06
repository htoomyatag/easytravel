class AddToairportToAirfare < ActiveRecord::Migration
  def change
  	add_column :airfares, :to_airport, :string
  end
end
