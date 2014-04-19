action :add do
  systrail_template new_resource.name
  systrail_source new_resource.name do
    files new_resource[:source]
  end
  systrail_destination new_resource.name do
    udp(host: 'logs.papertrailapp.com', port: new_resource[:port])
    template new_resource.name
  end
  systrail_log new_resource.name do
    source [new_resource.name]
    destination [new_resource.name]
  end
end

action :delete do
  systrail_source new_resource.name { action :delete }
  systrail_template new_resource.name  { action :delete }
  systrail_destination new_resource.name { action :delete }
  systrail_log new_resource.name { action :delete }
end
