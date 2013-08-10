class Step < ActiveRecord::Base
  belongs_to :how
  attr_accessible :description, :title
end
