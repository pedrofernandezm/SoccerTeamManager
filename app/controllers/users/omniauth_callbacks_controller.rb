class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    provider_action
  end

  private

  def provider_action
    auth = request.env["omniauth.auth"]
    if authentication = Authentication.find_by_uid_and_provider(auth.uid, auth.provider)
      flash[:notice] = "Signed in successfully"
      sign_in_and_redirect(authentication.user) and return
    else
      resource_params = {
        email: auth.info.email, 
        first_name: (auth.info.first_name || auth.info.name), 
        last_name: auth.info.last_name,
        password: Devise.friendly_token[0,20]
      }
      resource = build_resource(resource_params)
      resource.authentications.build({
        provider: auth.provider, 
        uid: auth.uid, 
        access_token: auth.credentials.token, 
        secret_token: auth.credentials.secret
      })
      if resource.save
        sign_in_and_redirect(user) and return
      else
        flash[:error] = resource.errors.full_messages.to_sentence
        redirect_to root_path
      end
    end
  end

  def sign_in_and_redirect(user)
    sign_in user
    redirect_to users_teams_path
  end

end