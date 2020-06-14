class SessionsController < Devise::SessionsController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user 
      sign_in(@user)
      flash[:notice] = "Logged in successfully"
      redirect_to root_path
    else
      flash.now[:notice] = "Worng password or email"
      render 'new'
    end
  end
    
end