class CreatePayrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :payrolls do |t|
      t.float :sueldoBase
      t.float :bonificacionTotal
      t.float :valorHorasTrabajadas
      t.integer :horasTrabajadas
      t.float :sueldoTotal
      t.integer :horasRestante
      t.integer :horasPorTrabajar
      t.float :valorHorasRestantes
      t.references :user, null: false, foreign_key: true
      t.references :degrretype, null: false, foreign_key: true
      t.references :researchtype, null: false, foreign_key: true
      t.references :fee, null: false, foreign_key: true
      t.references :contract, null: false, foreign_key: true

      t.timestamps
    end
  end
end
