class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :language_name
      t.string :color

      t.timestamps
    end
  end
end
