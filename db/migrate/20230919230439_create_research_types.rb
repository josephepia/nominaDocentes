class CreateResearchTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :research_types do |t|
      t.string :nivel
      t.integer :puntaje
      t.float :bono
      t.boolean :semillero

      t.timestamps
    end
  end
end
