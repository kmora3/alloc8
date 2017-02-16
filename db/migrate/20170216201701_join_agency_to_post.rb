class JoinAgencyToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :agencies, index: true
  end
end
