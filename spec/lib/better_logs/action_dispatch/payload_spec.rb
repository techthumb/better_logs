require 'spec_helper'
describe ::BetterLogs::ActionDispatch::Payload do
  let(:remote_ip) { '8.8.8.8' }
  let(:headers)   do
    {'HTTP_USER_AGENT' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36'}
  end
  let(:uuid) { '1f5cae4b-901e-425e-96b2-2a8b5143f11b' }
  let(:request) do
    double(ActionDispatch::Request, remote_ip: remote_ip, headers: headers, uuid: uuid)
  end

  let(:payload) do
    { request: request }
  end

  subject { OpenStruct.new(described_class.new(payload)) }

  its(:remote_ip)         { should == remote_ip       }
  its(:request_id)        { should == uuid            }
  its(:browser_name)      { should == 'Chrome'        }
  its(:browser_platform)  { should == 'Macintosh'     }
  its(:browser_version)   { should == '34.0.1847.131' }
end
