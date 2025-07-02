class CreateWineries < ActiveRecord::Migration[7.1]
  def change
    create_table :wineries do |t|
      t.string  :title,              null: false
      t.text    :open_days_and_time, null: false
      t.integer :wine_region_id,     null: false
      t.integer :tasting_id,         null: false
      t.integer :winery_type_id,     null: false

      t.references :grape_variety,   null: false, foreign_key: true
      t.references :wine_style,      null: false, foreign_key: true
      t.references :award,           null: false, foreign_key: true
      t.references :experience,      null: false, foreign_key: true
      t.references :dining,          null: false, foreign_key: true

      t.string  :facilities,         null: false
      t.text    :description,        null: false
      t.string  :address,            null: false
      t.string  :website,            null: false
      t.string  :phone,              null: false
      t.string  :map,                null: false

      t.float   :rating,             default: nil

      t.timestamps
    end
  end
end