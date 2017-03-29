class Artist < ActiveRecord::Base

  validates :name, presence_of: true

end
