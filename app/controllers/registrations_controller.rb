class RegistrationsController < Devise::RegistrationsController
  protected

  def after_update_path_for(resource)
    user_profile_path(resource)
  end
end