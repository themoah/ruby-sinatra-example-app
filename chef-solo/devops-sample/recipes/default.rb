#
# Cookbook:: devops-sample
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

docker_installation 'default' do
    repo 'main'
end

docker_service_manager 'default' do
    log_driver 'json-file'
    log_level :info
end