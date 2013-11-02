class MyDevise::RegistrationsController < Devise::RegistrationsController
  def create
    # add custom create logic here
  end

  def user_params
  	params.require(:user).permit!
  end
end