class CreateDoses < ActiveRecord::Migration[6.1]
  def change
    create_table :doses do |t|
      t.text :description
      t.references :cocktail, null: false, foreign_key: true
      t.string :ingredient
      t.string :references

      t.timestamps
    end
  end
end
