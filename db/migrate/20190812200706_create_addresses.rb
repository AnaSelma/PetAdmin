class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :zipcode
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
