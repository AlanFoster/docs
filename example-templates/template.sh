
baseURL="<%= config.baseURL %>"
username="<%= config.username %>"
password="<%= config.password.replace(/(["\s'$`\\])/g,'\\$1') %>"
appId="<%= config.appId %>"
appSecret="<%= config.appSecret %>"
endpointId="<%= config.endpointId %>"
groupId="<%= config.groupId %>"
roleId="<%= config.roleId %>"
newRoleId="<%= newRole.id %>"
newRoleName="<%= newRole.name %>"
adminToken="<%= tokens.adminToken %>"
appToken="<%= tokens.appToken %>"

<%= code %>
