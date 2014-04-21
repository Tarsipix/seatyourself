class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone
      t.string :photo_url
      t.integer :category_id
      t.integer :owner_id
      t.integer :capacity
      t.time :open_from
      t.time :open_to

      t.timestamps
    end
  end
end
