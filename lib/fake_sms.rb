module FakeSms
  Message = Struct.new(:number, :message)
  @messages = [] # pass it thru this array so the test can look thru it

  def self.send_sms(number:, message:)
    @messages << Message.new(number, message)
  end

  def self.messages
    @messages
  end
end

# stubbing out data or mocking data
# we dont want to hit a database 
# we dont want to hit a api
# we dont want to slow our tests down

# struct: closest thing to mimicing a database