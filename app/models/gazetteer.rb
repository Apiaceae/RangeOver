class Gazetteer < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  geocoded_by :address
  after_validation :geocode
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode
  # Will_paginate gem
  self.per_page = 10

  # kaminari gem
  # paginates_per 10
  #

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |gazetteer|
        csv << gazetteer.attributes.values_at(*column_names)
      end
    end
  end
end
