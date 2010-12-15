class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy, :order => "id"
  
  validates :title, :presence => true, :uniqueness => true, :length => { :maximum => 100, :minimum => 3 }
  validates :url, :presence => true
  validates :description, :presence =>true
  validates :user, :presence => true
end
