class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :maile
      t.integer :shelf_id, null: false

      t.timestamps null: false
    end
  end
end
