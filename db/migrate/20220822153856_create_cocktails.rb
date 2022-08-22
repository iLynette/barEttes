class CreateCocktails < ActiveRecord::Migration[7.0]
  def change
    create_table :cocktails do |t|
      t.string :drink_type
      t.string :ingredients
      t.integer :alcohol_content
      t.integer :calories

      t.timestamps
    end
  end
end
