class ChangeDataLanguageToCode < ActiveRecord::Migration[5.2]
  def change
  	change_column :codes, :language, :integer 
  end
end
