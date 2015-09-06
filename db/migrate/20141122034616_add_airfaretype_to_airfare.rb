class AddAirfaretypeToAirfare < ActiveRecord::Migration
  def change
  	add_column :airfares, :airfare_type, :string
  end
end
