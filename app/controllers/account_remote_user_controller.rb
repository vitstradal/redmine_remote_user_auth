require 'pp'
class AccountRemoteUserController < AccountController

  # FIXME: nevim jestli je to potreba
  helper :custom_fields
  include CustomFieldsHelper

  # prevents login action to be filtered by check_if_login_required application scope filter
  skip_before_filter :check_if_login_required

  def login_remote_user

    email = request.headers["Remote-User-Email"]
    user = User.find_by_mail(email)

    unless user && user.active?
      flash.now[:error] = l(:notice_account_unknown_email)
      return
    end
    if  user.auth_source.nil? || user.auth_source.name != 'RemoteUser'
      # FIXME: pomoci l(...)
      flash.now[:error] = :user_auth_source_not_remote_user;
      return
    end 
    successful_authentication(user)
  end
end
