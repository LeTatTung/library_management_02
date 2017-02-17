class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :price
      t.integer :status
      t.float :rate_point
      t.integer :view_count
      t.datetime :publish_date
      t.integer :quantity
      t.integer :pages
      t.integer :publisher_id
      t.timestamps
    end
  end
end
