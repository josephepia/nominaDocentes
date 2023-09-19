class CreateFees < ActiveRecord::Migration[7.0]
  def change
    create_table :fees do |t|
      t.string :descripcion
      t.float :valor

      t.timestamps
    end
  end
end
