class CreateResearcherCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :researcher_categories do |t|
      t.string :descripcion
      t.integer :puntaje

      t.timestamps
    end
  end
end
