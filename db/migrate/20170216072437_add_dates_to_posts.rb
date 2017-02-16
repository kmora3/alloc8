class AddDatesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :start_date, :string
    add_column :posts, :end_date, :string
  end
end
