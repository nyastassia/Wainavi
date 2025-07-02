class Experience < ApplicationRecord
  has_many :experience_wineries
  has_many :wineries, through: :experience_wineries
end
