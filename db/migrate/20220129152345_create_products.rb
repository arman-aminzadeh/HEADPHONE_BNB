class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price_per_day
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
