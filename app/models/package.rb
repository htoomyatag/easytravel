class Package < ActiveRecord::Base

	belongs_to :airfare
    belongs_to :local_transpotation
    belongs_to :guide
    belongs_to :hotel
    belongs_to :destination


end
