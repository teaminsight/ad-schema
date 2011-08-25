AD::Framework.register_attributes([
  { :name => "account_expires",         :ldap_name => "accountexpires",       :type => "timestamp" },
  { :name => "admin_count",             :ldap_name => "admincount",           :type => "integer" },
  { :name => "last_bad_password_at",    :ldap_name => "badpasswordtime",      :type => "timestamp" },
  { :name => "bad_password_count",      :ldap_name => "badpwdcount",          :type => "integer" },
  { :name => "home_directory",          :ldap_name => "homedirectory",        :type => "string" },
  { :name => "home_drive",              :ldap_name => "homedrive",            :type => "string" },
  { :name => "last_logged_in_at",       :ldap_name => "lastlogon",            :type => "timestamp" },
  { :name => "locked_out_at",           :ldap_name => "lockouttime",          :type => "timestamp" },
  { :name => "logged_in_count",         :ldap_name => "logoncount",           :type => "integer" },
  { :name => "primary_group_id",        :ldap_name => "primarygroupid",       :type => "integer" },
  { :name => "profile_path",            :ldap_name => "profilepath",          :type => "string" },
  { :name => "password_last_set_at",    :ldap_name => "pwdlastset",           :type => "timestamp" },
  { :name => "script_path",             :ldap_name => "scriptpath",           :type => "string" },
  { :name => "service_principal_names", :ldap_name => "serviceprincipalname", :type => "array" },
  { :name => "unicode_password",        :ldap_name => "unicodepwd",           :type => "unicode_password" },
  { :name => "account_control",         :ldap_name => "useraccountcontrol",   :type => "flags" },
  { :name => "parameters",              :ldap_name =>  "userparameters",      :type => "string" },
  { :name => "principal_name",          :ldap_name => "userprincipalname",    :type => "string" },
  { :name => "uid",                     :ldap_name => "uid",                  :type => "string" },
])