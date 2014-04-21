action :add do
  syslog_ng_template new_resource.name
  syslog_ng_source new_resource.name do
    files new_resource.source
  end
  syslog_ng_destination new_resource.name do
    udp(host: 'logs.papertrailapp.com', port: new_resource.port)
    template new_resource.name
    mark_mode new_resource.mark_mode
  end
  syslog_ng_log new_resource.name do
    source [new_resource.name]
    destination [new_resource.name]
  end
end

action :delete do
  syslog_ng_source new_resource.name { action :delete }
  syslog_ng_template new_resource.name  { action :delete }
  syslog_ng_destination new_resource.name { action :delete }
  syslog_ng_log new_resource.name { action :delete }
end
