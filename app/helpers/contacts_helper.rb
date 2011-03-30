module ContactsHelper
  def contact_roles_for_select
    Contact::ROLES.collect do |role|
      [role.to_s.humanize, role.to_s]
    end
  end
end
