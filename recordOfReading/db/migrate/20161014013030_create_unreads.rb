class CreateUnreads < ActiveRecord::Migration
  def change
    create_table :unreads do |t|
      t.integer :book_id, null: false
      t.string :name
      t.string :type
      t.string :author
      t.date :purchase_date
      t.date :goal

      t.timestamps null: false
    end
  end
end
