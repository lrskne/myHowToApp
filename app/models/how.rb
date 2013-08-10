class How < ActiveRecord::Base
# some notes: the :dependent is exaplained on pg 152
# briefly: here the :delete_all does the equiv of: delete from steps where
#     how_id = :how_id
  attr_accessible :description
  validates :description, :presence => true
  has_many :steps, :dependent => :delete_all
end