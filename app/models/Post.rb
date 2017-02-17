class Post < ActiveRecord::Base

  belongs_to :agencies
  belongs_to :category
  belongs_to :sub_category
  validates_presence_of :title
  validates_presence_of :location
  validates_presence_of :skills
  validates_presence_of :description
  validates_presence_of :start_date
  validates_presence_of :end_date

end
