class SavedWinery < ApplicationRecord
  belongs_to :user
  belongs_to :winery
end
