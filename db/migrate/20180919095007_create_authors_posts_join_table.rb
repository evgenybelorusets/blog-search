class CreateAuthorsPostsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :authors, :posts do |t|
      t.index :author_id
      t.index :post_id
    end
  end
end
