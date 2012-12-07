class User < ActiveRecord::Base
  attr_accessible :email, :name, :nric, :password
  validates :email, :name, :nric, :password, :presence => true
  validates :nric, :email, :uniqueness => true
  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :nric, :format => { :with => /^S\d{7}[a-zA-z]$/i }
end
