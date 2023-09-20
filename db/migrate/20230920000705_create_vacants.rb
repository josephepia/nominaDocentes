class CreateVacants < ActiveRecord::Migration[7.0]
  def change
    create_table :vacants do |t|
      t.integer :cantidad
      t.references :area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
