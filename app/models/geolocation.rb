class Geolocation < ActiveRecord::Base
  before_create :randomize_file_name
  validates_presence_of :title, :description
  has_attached_file :location, :path => ":rails_root/public/uploads"


  private
  def randomize_file_name
    extension = File.extname(location_file_name).downcase
    self.location.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
  end
end
