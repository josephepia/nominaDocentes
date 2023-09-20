class CreateUserExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :user_experiences do |t|
      t.integer :anos
      t.references :experience, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
