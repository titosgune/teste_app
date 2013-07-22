class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts
  validate :content, :length=>{:maximum =>10}
end
