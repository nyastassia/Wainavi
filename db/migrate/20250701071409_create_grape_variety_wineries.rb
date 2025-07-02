class CreateGrapeVarietyWineries < ActiveRecord::Migration[7.1]
  def change
    create_table :grape_variety_wineries do |t|
      t.references :grape_variety, null: false, foreign_key: true
      t.references :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
