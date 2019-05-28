class EmailClient
  attr_reader :message_class
  def initialize(message_class = Message.new)
    @message_class = message_class
  end
  def message
    @message_class
  end
end

class Message
  def send(to, body)
    return [to, body]
  end
end

class SayHelloToMyLittleFriend
  attr_reader :emailclient
  def initialize(emailclient_class = EmailClient.new)
    @emailclient = emailclient_class
  end
  def run
    return @emailclient.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end