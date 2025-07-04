class ChangeNullConstraintsInWineries < ActiveRecord::Migration[7.1]
  def change
    change_column_null :wineries, :open_days_and_time, true
    change_column_null :wineries, :tasting_id, true
    change_column_null :wineries, :winery_type_id, true
    change_column_null :wineries, :award_id, true
    change_column_null :wineries, :experience_id, true
    change_column_null :wineries, :dining_id, true
    change_column_null :wineries, :facilities, true
    change_column_null :wineries, :description, true
    change_column_null :wineries, :address, true
  end
end