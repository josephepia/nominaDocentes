class CreateDegreeTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :degree_types do |t|
      t.string :descripcion
      t.integer :puntaje
      t.integer :nivel
      t.float :bono
      t.boolean :posgrado

      t.timestamps
    end
  end
end
