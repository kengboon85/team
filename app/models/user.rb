class User < ActiveRecord::Base
  attr_accessible :email, :image_url, :name, :nric, :password
  validates :email, :name, :nric, :password, :presence => true
  validates :nric, :email, :uniqueness => true
  validates :image_url, :format => {
	:with => %r{|\.(gif|jpg|png)$}i,
	:message => 'must be a URL for GIF, JPG or PNG image.'
	}
end
