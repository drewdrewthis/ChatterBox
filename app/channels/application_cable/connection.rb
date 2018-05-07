module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      @current_user = find_verified_user
      self.current_user = find_verified_user
    end

    def disconnect
      puts @current_user
      puts 'disconnected'
    end

    private
      def find_verified_user
        current_user = User.find_by(nickname: cookies[:nickname])
        puts 'CURRENT USER'
        puts current_user
        if current_user
          current_user
        else
          reject_unauthorized_connection
        end
      end
  end
end
