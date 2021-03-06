require_relative('./bank_accounts_functions')

##number of bank accounts
bank_accounts_count = number_of_bank_accounts()
puts "number of accounts #{bank_accounts_count}"
puts "\n"

###first account owner
first_bank_owner = first_bank_account_holder()
puts "first bank account owner is #{first_bank_owner}"
puts "\n"

###print to screen name of all bank account owners
puts "name of bank account owners"
print_owner_names()
puts "\n"

###total cash in bank
total_cash = total_cash_in_bank()
puts "total in bank #{total_cash}"
puts "\n"

###last account owner
last_bank_owner = last_bank_account_holder()
puts "last bank account owner is #{last_bank_owner}"
puts "\n"

###average bank account value
average_value = average_account_value()
puts "average account value is #{average_value}"
puts "\n"

###total cash in business accounts
total_business = total_business_cash()
puts "total cash in business accounts is #{total_business}"
puts "\n"

###holder of largest bank account

largest_account_name = largest_account_holder()
puts "holder of largest account: #{largest_account_name}"
puts "\n"

###holder of largest personal account
largest_personal_name = largest_personal_account()
puts "holder of largest personal account: #{largest_personal_name}"
puts "\n"

###any other functionality you want to add.

###print bank logbook
bank_logbook()
puts "\n"

###look up a person's account by inputting their name

puts "Tony's balance is: #{balance_check("Tony")}"
