class CreateMixers < ActiveRecord::Migration[6.1]
  def change
    create_table :mixers do |t|
      t.string :name

      t.timestamps
    end
  end
end
