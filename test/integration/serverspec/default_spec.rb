require_relative '../spec_helper'

describe port(9200) do
  it { should be_listening.with('tcp6') }
end

describe service('elasticsearch') do
  it { should be_enabled }
  it { should be_running }
end
