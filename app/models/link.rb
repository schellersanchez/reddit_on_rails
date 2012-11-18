class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes
  attr_accessible :url, :title
end
