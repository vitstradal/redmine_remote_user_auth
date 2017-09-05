# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

match 'loginRemoteUser', :to => 'account_remote_user#login_remote_user', :as => 'signinRemoteUser', via: [:get, :post]
