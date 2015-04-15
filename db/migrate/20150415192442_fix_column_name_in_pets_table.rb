class FixColumnNameInPetsTable < ActiveRecord::Migration
  def change
      change_table :pets do |t|
      t.rename :type_of_animal, :pet_type
    end
  end
end
