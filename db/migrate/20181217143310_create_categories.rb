class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_type ,default: 0, null: false, limit: 1

      t.timestamps null: false
    end
  end
end
