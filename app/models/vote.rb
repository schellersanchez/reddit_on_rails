class Vote < ActiveRecord::Base
  attr_accessible :up, :user_id, :link_id
  validates :user_id, :uniqueness => { :scope => :link_id }

  belongs_to :user
  belongs_to :link

end
