class GrapeVariety < ApplicationRecord
  has_many :grape_variety_wineries
  has_many :wineries, through: :grape_variety_wineries
end
