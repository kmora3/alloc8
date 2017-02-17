class RemoveCategoriesReferenceFromPosts < ActiveRecord::Migration
  def change
    remove_reference :posts, :categories
    # drop_table :posts_agencies
    add_reference :posts, :category
  end
end
