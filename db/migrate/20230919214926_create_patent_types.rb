class CreatePatentTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :patent_types do |t|
      t.string :descripcion
      t.integer :puntaje

      t.timestamps
    end
  end
end
