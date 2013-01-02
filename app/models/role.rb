class Role < ActiveRecord::Base
  default_scope :order => 'name'
  has_many :user_roles
  before_destroy :ensure_not_referenced_by_any_user_role
  
  attr_accessible :name
  
  def ensure_not_referenced_by_any_user_role
	if user_roles.count.zero?
		return true
	else
		errors.add(:base, 'User roles present' )
		return false
	end
  end
end
