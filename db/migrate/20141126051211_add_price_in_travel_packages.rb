class AddPriceInTravelPackages < ActiveRecord::Migration
  def change
  	add_column :travel_packages, :price, :string
  end
end
