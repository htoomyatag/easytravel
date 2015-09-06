class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :price
      t.string :rank
      t.string :star

      t.timestamps
    end
  end
end
