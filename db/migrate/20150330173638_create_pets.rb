class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :birthday
      t.string :microchip_number
      t.string :microchip_company
      t.string :microchip_company_website
      t.string :microchip_company_phone
      t.string :microchip_registration_number
      t.string :county_registration_number
      t.string :county_registration_contact
      t.string :county_registration_expiration
      t.string :rabies_vaccination_number
      t.string :rabies_expiration
      t.string :size
      t.string :weight
      t.string :color
      t.string :care_instructions
      t.string :special_needs
      t.string :temperament
      t.string :historical_information
      t.string :type
      t.string :breed
      t.string :gender
      t.string :altered
      t.string :photos
      t.string :records

      t.timestamps null: false
    end
  end
end
