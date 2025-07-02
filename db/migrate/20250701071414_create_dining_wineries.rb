class CreateDiningWineries < ActiveRecord::Migration[7.1]
  def change
    create_table :dining_wineries do |t|
      t.references :dining, null: false, foreign_key: true
      t.references :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
