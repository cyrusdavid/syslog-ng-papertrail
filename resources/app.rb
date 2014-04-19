actions :add, :delete
default_action :add

attribute :port, kind_of: Fixnum, required: true
attribute :source, kind_of: Array, required: true
