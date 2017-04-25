require 'awesome_print'

class User
  attr_reader :personal_info, :contact_info, :role

  def initialize(personal_info, contact_info, role)
    @personal_info = personal_info
    @contact_info = contact_info
    @role = role
  end
end

class Role
  attr_reader :permissions

  def initialize(*permissions)
    @permissions = permissions
  end

  def add_permission(permission)
    @permission << permission
  end

  def permission_for?(key)
    @permissions.include? key
  end
end

admin_personal_info = {'name'=>'Valentin', 'last_name'=>'Romero', 'birth_year'=>1995}
admin_contact_info = {'email'=>'valedor_10@hotmail.com', 'mob'=>'4181224590'}
admin_role = Role.new('users','contacts','promotions')
admin = User.new(admin_personal_info, admin_contact_info, admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions
ap admin_role.methods - Object.methods