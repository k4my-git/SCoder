class AddfileToCodes < ActiveRecord::Migration[5.2]
  def change
  	add_column :codes, :file, :string
  	add_column :codes, :filename, :string
  end
end
