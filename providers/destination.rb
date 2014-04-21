action :add do
  template "/etc/syslog-ng/conf.d/02-#{new_resource.name}.conf" do
    cookbook "syslog_ng"
    source "destination.conf.erb"
    variables(app: new_resource)
    notifies :reload, "service[syslog-ng]"
  end
end

action :delete do
  file("/etc/syslog-ng/conf.d/02-#{new_resource.name}.conf") { action :delete }
    notifies :restart, "service[syslog-ng]"
end

def load_current_resource
  service "syslog-ng" do
    supports :restart => true, :reload => true
  end
end
