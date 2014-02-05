class Event < ActiveRecord::Base
  validates_presence_of :title, :description, :start_at, :end_at, :member, :address
  
  has_attached_file :geotag, :path => ":rails_root/public/uploads"
end
