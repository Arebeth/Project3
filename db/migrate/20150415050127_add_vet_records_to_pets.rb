class AddVetRecordsToPets < ActiveRecord::Migration
  def change
    add_column :pets, :vet_records, :string
  end
end
