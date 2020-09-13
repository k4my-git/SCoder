class ChangeLanguageOfCodes < ActiveRecord::Migration[5.2]
  def up
    change_column :codes, :language, :integer, default: -1
  end

  def down
    change_column :codes, :language, :integer
  end
end
