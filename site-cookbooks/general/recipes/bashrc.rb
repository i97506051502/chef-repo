cookbook_file "/tmp/.bashrc_DEV_ROOT" do
  mode 00644
end

bash "add bash settings" do
  not_if 'grep "Added By Go Sato Using Chef" /root/.bashrc'
  code <<-EOC
    echo "$(cat /tmp/.bashrc_DEV_ROOT)" >> /root/.bashrc
  EOC
end
