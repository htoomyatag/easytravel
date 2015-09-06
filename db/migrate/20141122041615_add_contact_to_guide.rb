class AddContactToGuide < ActiveRecord::Migration
  def change
  	add_column :guides, :contact, :string
  end
end
