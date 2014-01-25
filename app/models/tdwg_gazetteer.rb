class TdwgGazetteer < ActiveRecord::Base
  belongs_to :tdwg_level_four

  self.per_page = 10
end
