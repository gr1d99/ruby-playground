def fetch_user_info
  info = {}
  puts 'Enter first name'
  info[:first_name] = gets.chomp

  puts 'Enter last name'
  info[:last_name] = gets.chomp

  puts 'Enter age'
  info[:age] = gets.chomp

  display_user_info(info)
end

def display_user_info(info = {})
  formatter = '%<first_name>s %<last_name>s %<age>s'
  format(formatter, info)
end

puts fetch_user_info
