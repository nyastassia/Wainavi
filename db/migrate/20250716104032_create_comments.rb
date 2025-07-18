class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user, null: false, foreign_key: true
      t.references :winery, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
