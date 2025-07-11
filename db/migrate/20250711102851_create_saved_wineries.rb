class CreateSavedWineries < ActiveRecord::Migration[7.1]
  def change
    create_table :saved_wineries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
