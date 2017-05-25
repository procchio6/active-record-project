class CreateBookRecords < ActiveRecord::Migration[4.2]
  def change
    create_table :book_records do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :returned
      t.datetime :due_date
    end
  end
end
