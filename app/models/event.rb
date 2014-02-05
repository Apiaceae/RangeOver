class Event < ActiveRecord::Base
  has_and_belongs_to_many :gazetteers
  validates_presence_of :title, :description, :start_at, :end_at, :member, :address
  
  has_attached_file :geotag, :path => ":rails_root/public/uploads"
end
