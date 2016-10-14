class CreateFinisheds < ActiveRecord::Migration
  def change
    create_table :finisheds do |t|
      t.integer :shelf_id, null: false
      t.string :name
      t.string :type
      t.string :author
      t.integer :evaluation
      t.string :comment

      t.timestamps null: false
    end
  end
end
