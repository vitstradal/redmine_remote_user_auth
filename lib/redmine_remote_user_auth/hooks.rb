module RedmineRemoteUserAuth;
  class Hooks < Redmine::Hook::ViewListener
	render_on(:view_account_login_bottom, :partial => 'account_remote_user/login_ssl_link')
  end
end
