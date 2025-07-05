class RenameTastingIdToTastingTypeIdInWineries < ActiveRecord::Migration[7.1]
  def change
    rename_column :wineries, :tasting_id, :tasting_type_id
  end
end
