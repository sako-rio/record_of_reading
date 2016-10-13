class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :book_id, null: false
      t.string :name
      t.string :maile

      t.timestamps null: false
    end
  end
end
