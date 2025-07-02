class GrapeVarietyWinery < ApplicationRecord
  belongs_to :grape_variety
  belongs_to :winery
end
