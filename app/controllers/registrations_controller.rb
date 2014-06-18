class RegistrationsController < Devise::RegistrationsController
  protected

  def after_update_path_for(resource)
    user_pops_path(resource)
  end
end