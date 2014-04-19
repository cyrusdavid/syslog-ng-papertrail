actions :add, :delete
default_action :add

attribute :name, kind_of: String, required: true
attribute :udp, kind_of: Hash, default: nil
attribute :template, kind_of: String, default: nil
attribute :mark_mode, kind_of: String, default: "global"
