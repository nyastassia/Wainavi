class CreateAwardWineries < ActiveRecord::Migration[7.1]
  def change
    create_table :award_wineries do |t|
      t.references :award, null: false, foreign_key: true
      t.references :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
