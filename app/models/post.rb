class Post < ActiveRecord::Base
  attr_accessible :description, :title

  validates :title, :presence => true, :length =>{:maximum => 15}
  validates :description, :presence => true



  has_many :comments
end
