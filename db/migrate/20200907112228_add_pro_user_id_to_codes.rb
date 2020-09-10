class AddProUserIdToCodes < ActiveRecord::Migration[5.2]
  def change
    add_column :codes, :user_id, :integer
  end
end
