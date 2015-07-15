class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.text :name
      t.string :image

      t.timestamps null: false
    end
  end
end
