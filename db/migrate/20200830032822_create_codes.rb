class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :code_name
      t.text :codes_explanation
      t.string :language

      t.timestamps
    end
  end
end
