class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :points
      t.string :email
      t.string :password_digest
      t.string :user_type

      t.timestamps
    end
  end
end
