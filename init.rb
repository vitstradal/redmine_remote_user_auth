Redmine::Plugin.register :redmine_remote_user_auth do
  name 'Redmine Remote User Auth plugin'
  author 'Vitas Stradal stradal@dcit.cz'
  description 'Adds Remote User authorization to Redmine.'
  version '0.1.0'
  url 'http://example.com'
  author_url 'http://dcit.cz/'
end

Redmine::MenuManager.map :account_menu do |menu|
  #menu.push :loginRemoteUser, :signinRemoteUser_path, :if => Proc.new { !User.current.logged? }
  #menu.push :loginRemoteUser, { :controler=> 'my', :action=>  'signinRemoteUser' }, :if => Proc.new { !User.current.logged? }
  #menu.push :loginRemoteUser, { :controller=> 'account_remote_user', :action=>  'signin_remote_user' }, :if => Proc.new { !User.current.logged? }
  menu.push :loginRemoteUser, { :controller=> 'account_remote_user', :action=>  'login_remote_user', :ahoj=> '' }, :if => Proc.new { !User.current.logged? }
end

require_dependency 'redmine_remote_user_auth/hooks'
require_dependency 'redmine_remote_user_auth/hooks.rb'
