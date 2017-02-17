class Category < ActiveRecord::Base

  belongs_to :posts
  has_many :sub_categories

end
