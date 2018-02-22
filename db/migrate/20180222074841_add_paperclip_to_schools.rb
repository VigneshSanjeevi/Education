class AddPaperclipToSchools < ActiveRecord::Migration[5.1]
  def change
    add_attachment :schools, :image
  end
end
