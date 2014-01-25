class TdwgLevelThree < ActiveRecord::Base
  belongs_to :tdwg_level_two
  has_many :tdwg_level_fours

  self.per_page = 10
end
