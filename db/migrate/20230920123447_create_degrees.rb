class CreateDegrees < ActiveRecord::Migration[7.0]
  def change
    create_table :degrees do |t|
      t.string :nombre
      t.text :descripcion
      t.references :user, null: false, foreign_key: true
      t.references :degreetype, null: false, foreign_key: true

      t.timestamps
    end
  end
end
