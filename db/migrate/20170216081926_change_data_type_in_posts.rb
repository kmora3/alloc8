class ChangeDataTypeInPosts < ActiveRecord::Migration
  def change
    change_column :posts, :start_date, 'date USING CAST(start_date AS date)'
    change_column :posts, :end_date, 'date USING CAST(start_date AS date)'
  end
end
