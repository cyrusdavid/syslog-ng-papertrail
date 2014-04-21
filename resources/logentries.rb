actions :add, :delete
default_action :add

attribute :token, kind_of: String, required: true
attribute :mark_mode, kind_of: String, default: "global"
