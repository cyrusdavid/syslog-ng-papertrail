actions :add, :delete
default_action :add

attribute :source, kind_of: Array, required: true
attribute :destination, kind_of: Array, required: true
