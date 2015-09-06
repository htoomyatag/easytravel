class CreateAirfares < ActiveRecord::Migration
  def change
    create_table :airfares do |t|
      t.string :name
      t.string :price
      t.string :rank

      t.timestamps
    end
  end
end
