class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :destination_id
      t.integer :airfare_id
      t.integer :local_transpotation_id
      t.integer :guide_id
      t.string :travel_detail
      t.integer :hotel_id

      t.timestamps
    end
  end
end
