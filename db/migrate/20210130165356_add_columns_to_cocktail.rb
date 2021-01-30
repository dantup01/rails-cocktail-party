class AddColumnsToCocktail < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :about, :text
    add_column :cocktails, :description, :text
  end
end
