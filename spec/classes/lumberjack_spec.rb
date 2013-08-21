require 'spec_helper'

describe 'lumberjack', :type => 'class' do
  it do
    should contain_class 'lumberjack::install'
    should contain_class 'lumberjack::configure'
    should contain_class 'lumberjack::service'
  end
end

