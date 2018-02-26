class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.string :area
      t.string :address
      t.string :phno            
      t.timestamps
    end
  end
end
