class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.integer :horasSemanales
      t.integer :horasTrabajadas
      t.integer :horasRestantes
      t.text :descripcion
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
