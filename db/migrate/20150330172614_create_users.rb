class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :vet_name
      t.string :vet_number
      t.string :vet_address

      t.timestamps null: false
    end
  end
end
