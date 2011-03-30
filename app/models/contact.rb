class Contact < ActiveRecord::Base

  ROLES = [:admin, :technical]

  belongs_to :user
  belongs_to :customer

  ROLES.each do |role|
    named_scope role, :conditions => { :role => role }
  end
end
