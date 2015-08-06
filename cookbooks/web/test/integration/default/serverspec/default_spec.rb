require 'spec_helper'

describe 'web::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'serves our home page' do
    expect(command('curl http://localhost').stdout).to contain(/hello/i)
  end
end
