class RemoveJoinFieldsFromWineries < ActiveRecord::Migration[7.1]
def change
  remove_column :wineries, :grape_variety_id, :integer
  remove_column :wineries, :wine_style_id, :integer
  remove_column :wineries, :award_id, :integer
  remove_column :wineries, :experience_id, :integer
  remove_column :wineries, :dining_id, :integer
end
end
