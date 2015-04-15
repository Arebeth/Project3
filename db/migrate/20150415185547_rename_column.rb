class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :pets, :type, :type_of_animal
  end
end
