class AddCategoryToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :category, foreign_key: { to_table: :tags }
  end
end
