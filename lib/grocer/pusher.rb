module Grocer
  class Pusher

    @@connections = {}

    def initialize(connection)
      @connection = connection
    end

    def push(notification)
      @connection.write(notification.to_bytes)
    end

    def self.connections
      @@connections 
    end
  end
end
