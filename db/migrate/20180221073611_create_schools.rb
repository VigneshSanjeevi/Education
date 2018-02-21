class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :board
      t.string :area
      t.string :name
      t.string :address
      t.string :phno

      t.timestamps
    end
  end
end
