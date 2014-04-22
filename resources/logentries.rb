actions :add, :delete
default_action :add

attribute :token, kind_of: String, default: nil
attribute :port, kind_of: Fixnum, default: nil
attribute :mark_mode, kind_of: String, default: "global"
attribute :source, kind_of: Array, required: true
