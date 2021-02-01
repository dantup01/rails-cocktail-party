class CreateGarnishes < ActiveRecord::Migration[6.1]
  def change
    create_table :garnishes do |t|
      t.string :name

      t.timestamps
    end
  end
end
