class CreatePatents < ActiveRecord::Migration[7.0]
  def change
    create_table :patents do |t|
      t.string :nombre
      t.references :patenttype, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
