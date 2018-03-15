class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :food
      t.string :desc
      t.integer :country_id

      t.timestamps
    end
  end
end
