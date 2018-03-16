class CreateLeaders < ActiveRecord::Migration[5.1]
  def change
    create_table :leaders do |t|
      t.string :name
      t.integer :age
      t.string :title

      t.timestamps
    end
  end
end
