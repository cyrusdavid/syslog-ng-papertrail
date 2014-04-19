syslog-g-papertrail cookbook
============================

Send log files to papertrail through syslog-ng

Resources / Providers
---------------------

### systrail_source

### systrail_destination

### systrail_template

### systrail_log

### systrail_app
#### Actions
- `:add`
- `:delete`

#### Attributes
- `:port` - integer - papertrail port
- `:source` - array - log files


#### Example
```ruby
systrail_app "myapp" do
  source [
    "/var/log/supervisor/myapp-stdout.log",
    "/var/log/supervisor/myapp-stderr.log"
  ]
  port 1234
end
```
