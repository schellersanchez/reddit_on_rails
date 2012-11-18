class Vote < ActiveRecord::Base
  attr_accessible :up, :user_id, :link_id
  belongs_to :user
  belongs_to :link
end
