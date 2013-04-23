require 'spec_helper'

describe OmniAuth::Strategies::Derbywire do
  subject do
    OmniAuth::Strategies::Derbywire.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("derbywire")
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('https://api.derbywire.com')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_path.should eq('/v1/oauth/authorize')
    end
  end
end