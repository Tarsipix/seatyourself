class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone
      t.string :photo_url
      t.integer :capacity
      t.time :open_from # might be better to create hours of operation model since hours can be different everyday of the week
      t.time :open_to

      t.integer :category_id
      t.integer :owner_id # this assumes a restaurant belongs to one owner

      t.timestamps
    end
  end
end
