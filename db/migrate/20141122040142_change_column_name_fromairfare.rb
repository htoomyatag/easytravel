class ChangeColumnNameFromairfare < ActiveRecord::Migration
  def change
  	remove_column :airfares, :fromairport
  	add_column :airfares, :from_airport, :string
  end
end
