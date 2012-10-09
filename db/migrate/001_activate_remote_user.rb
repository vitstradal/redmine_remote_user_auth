# Copyright (C) 2012 vitas
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

class ActivateRemoteUser < ActiveRecord::Migration
  def up
    AuthSourceRemoteUser.create :name => "RemoteUser", :host => "localhost", :port => 1, :account => "user", :account_password => "pass", :base_dn => "app", :attr_login => "name", :attr_firstname =>"firstname", :attr_lastname => "lastname", :attr_mail => "email", :onthefly_register => TRUE, :tls => FALSE, :filter => ""
  end

  def down
	  AuthSourceRemoteUser.find_by_type("AuthSourceRemoteUser").destroy
  end
end
