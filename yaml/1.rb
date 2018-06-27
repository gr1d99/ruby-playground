require 'yaml'

class UserInfo

  def initialize
    @details = {}
  end

  def show_details
    puts @details
  end

  def start
    info = {}
    welcome_msg = 'Enter your details as required'
    welcome_msg_1 = 'Enter your details as required'

    puts welcome_msg.upcase
    puts '=' * welcome_msg.length
    puts
    puts welcome_msg_1
    puts

    loop do
      puts 'Enter your first name'
      first_name = gets.chomp
      info[:first_name] = first_name
    end

    save(info)

    puts @details
  end

  private

  def save(info)
    @details.merge!(info)
  end
end

user_info = UserInfo.new
user_info.start
