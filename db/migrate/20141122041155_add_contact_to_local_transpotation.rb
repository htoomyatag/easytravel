class AddContactToLocalTranspotation < ActiveRecord::Migration
  def change
  	add_column :local_transpotations, :contact, :string
  end
end
