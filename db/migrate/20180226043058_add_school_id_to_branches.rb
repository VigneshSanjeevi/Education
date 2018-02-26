class AddSchoolIdToBranches < ActiveRecord::Migration[5.1]
  def change
    add_column :branches, :school_id, :integer
    #add_index :branches, :school_id, unique: true
  end
end
