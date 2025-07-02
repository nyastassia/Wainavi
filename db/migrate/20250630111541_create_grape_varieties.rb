class CreateGrapeVarieties < ActiveRecord::Migration[7.1]
  def change
    create_table :grape_varieties do |t|
      t.string :name

      t.timestamps
    end
  end
end
