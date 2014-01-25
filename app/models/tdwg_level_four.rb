class TdwgLevelFour < ActiveRecord::Base
  belongs_to :tdwg_level_three
  has_many :tdwg_gazetteers

  self.per_page = 10
end
