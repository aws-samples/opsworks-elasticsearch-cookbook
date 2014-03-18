# Create script that pushes custom metrics into Cloudwatch
# 
template "/usr/local/bin/cloudwatch-custom.sh" do
  source "elasticsearch.cloudwatch-custom.sh.erb"
  mode "0550"
  owner "root"
  group "root"
end

# Cron it so that it runs every minute
#
cron "cloudwatch-custom" do
  hour "*"
  minute "*"
  weekday "*"
  command "/usr/local/bin/cloudwatch-custom.sh"
end
 