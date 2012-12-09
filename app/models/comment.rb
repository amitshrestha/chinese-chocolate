class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :commenter

  validates :commenter, :presence => true, :length => { :maximum => 15 }
  validates :body, :presence => true


end
