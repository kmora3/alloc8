class ChangeNameinCategory < ActiveRecord::Migration
  def change
    rename_table :category, :categories
    rename_table :sub_category, :subcategories
  end
end
