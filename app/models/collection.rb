class Collection < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  
  self.per_page = 10
end
