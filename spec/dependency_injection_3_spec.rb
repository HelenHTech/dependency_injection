require 'dependency_injection_3'

describe SayHelloToMyLittleFriend do
  let(:message_class) { double(:message_class, :send => ["friend@example.com", "HELLO!"] ) }
  let(:message)        { double(:message) }
  let(:emailclient_class) { double(:emailclient_class, :message => message_class ) }
  let(:emailclient) { double(:emailclient) }
  let(:sayhello) { SayHelloToMyLittleFriend.new(emailclient_class) }

  it 'Run' do
    allow(message).to receive(:send).and_return(["friend@example.com", "HELLO!"])
    allow(emailclient).to receive(:message).and_return(message_class)
    expect(sayhello.run).to eq(["friend@example.com", "HELLO!"])
  end
end