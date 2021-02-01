class CreateDoses < ActiveRecord::Migration[6.1]
  def change
    create_table :doses do |t|
      t.string :description
      t.references :cocktail, index: true
      t.references :alcohol, index: true
      t.references :mixer, index: true
      t.references :garnish, index: true

      t.timestamps
    end
  end
end
