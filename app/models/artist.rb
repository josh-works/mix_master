class Artist < ActiveRecord::Base

  validates :name, presence: true
  validates_uniqueness_of :name
  validates :image_path, presence: true

end
