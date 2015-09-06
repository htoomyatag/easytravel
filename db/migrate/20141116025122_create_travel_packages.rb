class CreateTravelPackages < ActiveRecord::Migration
  def change
    create_table :travel_packages do |t|
      t.string :name
      t.integer :airfare_id
      t.integer :local_transpotation_id
      t.integer :guide_id
      t.string :travel_detail
      t.integer :hotel_id

      t.timestamps
    end
  end
end
