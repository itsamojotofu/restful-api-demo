class CreatePurchaserProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :purchaser_products do |t|
      t.references :purchaser, foreign_key: true
      t.references :product,   foreign_key: true
      t.integer :purchase_timestamp, null: false
      t.date         :purchase_date, null: false
      t.timestamps
    end
  end
end
