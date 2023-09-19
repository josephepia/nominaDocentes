class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
