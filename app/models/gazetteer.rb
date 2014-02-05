class Gazetteer < ActiveRecord::Base
  validates_presence_of :address, :category_id
  belongs_to :category
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  reverse_geocoded_by :latitude, :longitude, :address => :full_address, :lookup => lambda { |obj| obj.geocoder_lookup }
  after_validation :reverse_geocode


  self.per_page = 10


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |gazetteer|
        csv << gazetteer.attributes.values_at(*column_names)
      end
    end
  end
end
