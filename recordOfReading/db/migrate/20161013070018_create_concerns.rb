class CreateConcerns < ActiveRecord::Migration
  def change
    create_table :concerns do |t|
      t.integer :book_id, null: false
      t.string :name
      t.string :type
      t.string :author

      t.timestamps null: false
    end
  end
end
