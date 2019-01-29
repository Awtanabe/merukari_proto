class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.date :shipped_on
      t.date :delivered_on
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
