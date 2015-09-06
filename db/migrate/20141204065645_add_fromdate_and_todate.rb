class AddFromdateAndTodate < ActiveRecord::Migration
  
  def change
  	add_column :packages, :from_date, :string
  	add_column :packages, :to_date, :string
  end

end
