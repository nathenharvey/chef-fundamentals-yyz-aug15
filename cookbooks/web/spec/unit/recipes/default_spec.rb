#
# Cookbook Name:: web
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'web::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'install apache' do
      expect(chef_run).to install_package 'httpd'
    end

    it 'starts the apache service' do
      expect(chef_run).to start_service 'httpd'
    end

    it 'creates a home page' do
      expect(chef_run).to render_file('/var/www/html/index.html').with_content(/hello/i)
    end
  end
end
