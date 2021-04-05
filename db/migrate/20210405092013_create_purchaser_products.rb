class CreatePurchaserProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :purchaser_products do |t|
      t.references :purchaser, foreign_key: true
      t.references :product,   foreign_key: true
      t.timestamps
    end
  end
end
