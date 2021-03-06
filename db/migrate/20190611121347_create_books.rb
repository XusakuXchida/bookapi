class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false, limit: 250
      t.text :description, null: false

      t.timestamps
    end
  end
end
