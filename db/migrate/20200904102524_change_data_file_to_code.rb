class ChangeDataFileToCode < ActiveRecord::Migration[5.2]
  def change
  	change_column :codes, :file, :binary 
  end
end
