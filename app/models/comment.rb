class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :content, :presence => true, :length => { :maximum => 255, :minimum => 3 }
  validates :user, :presence => true
  validates :post, :presence => true
end
