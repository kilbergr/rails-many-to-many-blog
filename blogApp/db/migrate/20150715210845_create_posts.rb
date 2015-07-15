class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :name
      t.text :content
      t.text :author
      t.integer :author_id
      
      t.timestamps null: false
    end
  end
end
