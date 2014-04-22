action :add do
  syslog_ng_template new_resource.name do
    logentries true
    logentries_token new_resource.token
  end
  syslog_ng_source new_resource.name do
    files new_resource.source
  end
  syslog_ng_destination new_resource.name do
    port= new_resource.port.nil? ? 10000 : new_resource.port
    tcp(host: 'api.logentries.com', port: port)
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
