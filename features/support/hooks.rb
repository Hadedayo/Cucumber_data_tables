Before do
  @users = ['Dave', 'Susan', 'Jamie']
end

After('@incorrect_username') do
  puts 'I am an after hook and I have run'
end
