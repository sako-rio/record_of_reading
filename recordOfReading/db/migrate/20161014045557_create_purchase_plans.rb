class CreatePurchasePlans < ActiveRecord::Migration
  def change
    create_table :purchase_plans do |t|
      t.integer :shelf_id, null: false
      t.string :name
      t.string :type
      t.string :author

      t.timestamps null: false
    end
  end
end
