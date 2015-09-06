class CreateLocalTranspotations < ActiveRecord::Migration
  def change
    create_table :local_transpotations do |t|
      t.string :name
      t.string :price
      t.string :rank

      t.timestamps
    end
  end
end
