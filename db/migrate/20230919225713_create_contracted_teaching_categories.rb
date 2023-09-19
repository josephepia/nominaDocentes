class CreateContractedTeachingCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :contracted_teaching_categories do |t|
      t.string :descripcion
      t.float :salario
      t.boolean :tiempoCompleto
      t.boolean :medioTiempo

      t.timestamps
    end
  end
end
