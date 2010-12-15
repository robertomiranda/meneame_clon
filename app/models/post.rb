class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy, :order => "id"
  validates :title, :presence => true, :uniqueness => true, :length => { :maximum => 100, :minimum => 3 }
  validates :link, :presence => true
  validates :content, :presence =>true
  validates :user, :presence => true
end
