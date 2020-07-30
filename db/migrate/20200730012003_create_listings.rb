class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :country
      t.integer :bedroom
      t.integer :bathroom
      t.integer :price
      t.integer :square_feet

      t.timestamps
    end
  end
end
