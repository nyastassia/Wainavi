class CreateWineStyleWineries < ActiveRecord::Migration[7.1]
  def change
    create_table :wine_style_wineries do |t|
      t.references :wine_style, null: false, foreign_key: true
      t.references :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
