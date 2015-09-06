class TravelPackage < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


    belongs_to :airfare
    belongs_to :local_transpotation
    belongs_to :guide
    belongs_to :hotel

  def self.search(price,name)
      where('price LIKE ? or price LIKE ? or price LIKE ? AND name LIKE ?', "#{price}", "#{(price.to_i+(0.2*price.to_i)).to_i}", "#{(price.to_i-(0.2*price.to_i)).to_i}", "%#{name}%")    
  end



end
