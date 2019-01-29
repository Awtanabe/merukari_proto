class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.decimal :total
      t.decimal :product_total
      t.decimal :taxt_total
      t.decimal :shipment_total

      t.timestamps null: false
    end
  end
end
