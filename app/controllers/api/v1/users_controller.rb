class Api::V1::UsersController < ApiController

  before_action :authorize_request

  def show
    @user = User.find(params[:id])
    render layout: 'layouts/api'
  end

end