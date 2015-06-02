require 'spec_helper'

describe 'display hello world' do
	it { should run.and_return('hello world')}
end
