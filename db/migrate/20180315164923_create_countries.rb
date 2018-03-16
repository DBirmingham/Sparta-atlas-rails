class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :size
      t.integer :population
      t.string :capital
      t.integer :leader_id

      t.timestamps
    end
  end
end
