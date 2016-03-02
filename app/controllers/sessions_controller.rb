class SessionsController < Devise::SessionsController

  skip_before_action :authenticate!, only: [:create]
  respond_to :html, :json

  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

  def cors_preflight_check
    if request.method == 'OPTIONS'
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, Token'
      headers['Access-Control-Max-Age'] = '1728000'

      render :text => '', :content_type => 'text/plain'
    end
  end


  def create
    # super do |user|
    user = User.find_by(email: params[:user][:email])
      if request.format.json? && (user.encrypted_password == BCrypt::Engine.hash_secret(params[:user][:password], user.encrypted_password))
        data = {
          token: user.authentication_token,
          email: user.email
        }
        render json: data, status: 201 and return
      end
    # end
  end

  def me
    render json: current_user
  end
end





