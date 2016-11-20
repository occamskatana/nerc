class AdminsController < ApplicationController
	before_action :authenticate_admin!

  def index
  	@inquiries = Inquiry.all.order(updated_at: :desc)
  end

end
