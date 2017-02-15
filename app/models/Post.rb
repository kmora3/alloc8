class Post < ActiveRecord::Base

  belongs_to :agency
  belongs_to :category
  belongs_to :sub_category
end
