class Billboard < ActiveRecord::Base

  attr_accessible :title, :etype_id

  belongs_to  :etype

  validates :etype_id, :presence => true
  validates :title,   :presence => true, :length => { :maximum => 255 }

end
