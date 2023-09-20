class CreateResearchGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :research_groups do |t|
      t.string :nombre
      t.references :user, null: false, foreign_key: true
      t.references :researchtype, null: false, foreign_key: true

      t.timestamps
    end
  end
end
