#!/usr/bin/env ruby

require 'uri'
require 'erb'

install_dir="#{ENV["HOME"]}/#{ENV["GRAVITEE_MODULE"]}"
config_dir="#{ENV["HOME"]}/config"

if ENV["ELASTICSEARCH_URL"].nil?
  puts " !     ELASTICSEARCH_URL is required, have your provisioned an ElasticSeach addon?"
  exit 1
end

if ENV["MONGO_URL"].nil?
  puts " !     MONGO_URL is required, have your provisioned an MongoDB addon?"
  exit 1
end

@elasticsearch_url = URI(ENV["ELASTICSEARCH_URL"])
@mongo_url = ENV["MONGO_URL"]

# Optional configuration to send emails
@mail_url = URI(ENV["MAIL_URL"]) if ENV["MAIL_URL"]

gravitee_config_template = "#{config_dir}/gravitee.yml.erb"
gravitee_config_install = "#{install_dir}/config/gravitee.yml"
if File.exists? gravitee_config_template
  erb = ERB.new(File.read(gravitee_config_template))
  File.write(gravitee_config_install, erb.result)
end

if Dir.exists? "#{config_dir}/themes"
  puts "-----> Copying themes…"
  FileUtils.cp_r "#{config_dir}/themes", install_dir
end

if Dir.exists? "#{config_dir}/templates"
  puts "-----> Copying templates…"
  FileUtils.cp_r "#{config_dir}/templates", install_dir
end
