class RegistrationsController < Devise::RegistrationsController


	private

	def sign_up_params
		params.require(:admin).permit(:full_name, :email, :password, :password_confirmation)
	end

end