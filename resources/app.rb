actions :create, :delete
default_action :create

attribute :port, kind_of: Fixnum, required: true
attribute :source, kind_of: Array, required: true
