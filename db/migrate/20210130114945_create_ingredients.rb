class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :alcohol
      t.string :mixer
      t.string :garnish

      t.timestamps
    end
  end
end
