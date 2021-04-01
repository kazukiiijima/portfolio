class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.timestamps
      t.integer :user_id
      t.integer :genre_id
      t.text :title
      t.text :body
    end
  end
end
