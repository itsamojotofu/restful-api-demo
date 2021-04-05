class CreatePurchaserProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :purchaser_products do |t|

      t.timestamps
    end
  end
end
