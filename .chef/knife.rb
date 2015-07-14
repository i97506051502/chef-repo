# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chef_test_u_01"
client_key               "#{current_dir}/chef_test_u_01.pem"
validation_client_name   "chef_test_org_01-validator"
validation_key           "#{current_dir}/chef_test_org_01-validator.pem"
chef_server_url          "https://chef-server.rls.local/organizations/chef_test_org_01"
cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:aws_credential_file] = "/root/.aws/credentials"
knife[:region] = "ap-northeast-1"
knife[:aws_ssh_key_id] = "go"
