class FixColumnNameInPetsTable < ActiveRecord::Migration
  def change
      change_table :pets do |t|
      t.rename :type, :pet_type
    end
  end
end
