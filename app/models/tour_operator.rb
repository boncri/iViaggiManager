class TourOperator < ActiveRecord::Base
  has_many :catalogs

  has_attached_file :icon, :styles => { :small => "32x32>", :medium => "64x64>" }
end
