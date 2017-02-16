class AddCategoryIndexToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :categories, index: true
  end
end
