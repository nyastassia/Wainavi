class WineStyleWinery < ApplicationRecord
  belongs_to :wine_style
  belongs_to :winery
end
