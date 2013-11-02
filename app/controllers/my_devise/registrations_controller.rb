class MyDevise::RegistrationsController < Devise::RegistrationsController
  def create
  	@user = User.create(user_params)
  end

  def user_params
  	params.require(:user).permit!
  end
end