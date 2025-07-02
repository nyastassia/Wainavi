class CreateDinings < ActiveRecord::Migration[7.1]
  def change
    create_table :dinings do |t|
      t.string :name

      t.timestamps
    end
  end
end
