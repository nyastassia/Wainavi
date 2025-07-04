class ChangeMapNullConstraintInWineries < ActiveRecord::Migration[7.1]
  def change
    change_column_null :wineries, :map, true
  end
end
