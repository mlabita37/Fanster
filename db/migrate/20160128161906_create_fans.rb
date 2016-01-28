class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :state
      t.string :country
      t.string :email

      t.timestamps null: false
    end
  end
end
