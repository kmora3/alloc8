class RemoveAgenciesReference < ActiveRecord::Migration
  def change
    remove_reference :posts, :agencies
    # drop_table :posts_agencies
    add_reference :posts, :agency
  end
end
