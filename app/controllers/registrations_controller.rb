class RegistrationsController < Devise::RegistrationsController
  #skip_before_filter :verify_authenticity_token,
  #                   :if => Proc.new { |c| c.request.format == 'application/json' }

  respond_to :json, :html

  def create
    @user = User.create(user_params)
    if @user.save
      render :status => 200,
             :json => { :success => true,
                        :info => "Registered",
                        :data => { :user => @user.email,
                                   :auth_token => @user.authentication_token } }
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => resource.errors,
                        :data => {} }
    end

  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
