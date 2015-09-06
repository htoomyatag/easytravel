class AddGuideTypeToGuide < ActiveRecord::Migration
  def change
  	add_column :guides, :guide_type, :string
  end
end
