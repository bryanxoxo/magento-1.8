#
# Cookbook Name:: magento
# Recipe:: default
#
# 
#  
app_name = "magento_test_may_7" 
key = "569dd5a337f87dab39cbc9fb690cf7ba"

if ['solo', 'app', 'app_master'].include?(node[:instance_role])
    template "/data/#{app_name}/shared/config/local.xml" do
    owner node[:owner_name]
    group node[:owner_name]
    mode 0644
    source "local.xml.erb"
    variables({
      :app_name => app_name,
      :dbuser => node[:owner_name],
      :dbpass => node[:owner_pass],
      :dbhost => node[:db_host],
      :key => key
    })

  end
  
end
  
