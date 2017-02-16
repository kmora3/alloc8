class AddSubcatToCatIndex < ActiveRecord::Migration
  def change
      add_reference :categories, :subcategories, index: true
  end
end
