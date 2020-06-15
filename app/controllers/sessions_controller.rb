class SessionsController < Devise::SessionsController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      sign_in(user)
      current_user = user.id
      flash[:notice] = "Logged in successfully"
      redirect_to root_path
    else
      flash.now[:notice] = "Worng User-Name"
      render 'new'
    end
  end

  protected
  def after_confirmation_path_for(resource_name, resource)
    token = resource.send(:set_reset_password_token)
    edit_password_path(resource, reset_password_token: token)
  end
    
end