class CreateBook1s < ActiveRecord::Migration[6.1]
  def change
    create_table :book1s do |t|
      t.string :name
      t.string :auther
      t.integer :price

      t.timestamps
    end
    add_index("book1s","name")
  end
end
