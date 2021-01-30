class CreateDoses < ActiveRecord::Migration[6.1]
  def change
    create_table :doses do |t|
      t.string :description
      t.references :cocktail, index: true
      t.references :ingredient, index: true

      t.timestamps
    end
  end
end
