class Point < ActiveRecord::Base
  belongs_to :tracksegment

  def latlng
    [self.latitude,self.longitude]
  end
end
