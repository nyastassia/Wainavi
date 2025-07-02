class CreateExperienceWineries < ActiveRecord::Migration[7.1]
  def change
    create_table :experience_wineries do |t|
      t.references :experience, null: false, foreign_key: true
      t.references :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
