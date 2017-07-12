class CreateAll < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|

      t.timestamps
    end

    create_table :orders do |t|
      t.string :status
      t.decimal :total_price
      t.integer :account_id

      t.timestamps
    end

    create_table :order_items do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id

      t.timestamps
    end

    create_table :reviews do |t|
      t.string :author
      t.string :content
      t.integer :rating

      t.timestamps
    end

  end
end
