actions :create, :delete
default_action :create

attribute :port, kind_of: FixNum, required: true
attribute :source, kind_of: Array, required: true
