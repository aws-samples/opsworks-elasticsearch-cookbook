node.default[:elasticsearch][:custom_config] =  {'node.rack_id' => "#{node[:opsworks][:instance][:availability_zone]}"}

