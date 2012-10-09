Redmine::Plugin.register :redmine_remote_user_auth do
  name 'Redmine Remote User Auth plugin'
  author 'Vitas Stradal stradal@dcit.cz'
  description 'Adds Remote User authorization to Redmine.'
  version '0.1.0'
  url 'http://example.com'
  author_url 'http://dcit.cz/'
end

Redmine::MenuManager.map :account_menu do |menu|
  menu.push :loginRemoteUser, :signinRemoteUser_path, :if => Proc.new { !User.current.logged? }
end

