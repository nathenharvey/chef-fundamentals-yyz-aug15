# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "nharveyyyzaug15"
client_key               "#{current_dir}/nharveyyyzaug15.pem"
validation_client_name   "nharveyyyzaug15-validator"
validation_key           "#{current_dir}/nharveyyyzaug15-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/nharveyyyzaug15"
cookbook_path            ["#{current_dir}/../cookbooks"]
