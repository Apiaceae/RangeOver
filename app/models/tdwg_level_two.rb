class TdwgLevelTwo < ActiveRecord::Base
  belongs_to :tdwg_level_one
  has_many :tdwg_level_threes

  self.per_page = 10
end
