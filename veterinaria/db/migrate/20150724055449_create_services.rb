class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, limit: 60
      t.decimal :price
      t.text :observation
      t.references :citation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
