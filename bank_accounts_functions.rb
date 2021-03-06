ACCOUNTS = [
  {
    holder_name: "Jay",
    amount: 55,
    type: "business"
  },
  {
    holder_name: "Rick",
    amount: 1,
    type: "personal"
  },
  {
    holder_name: "Keith",
    amount: 500,
    type: "business"
  },
  {
    holder_name: "Valerie",
    amount: 100,
    type: "personal"
  },
  {
    holder_name: "Michael",
    amount: 5,
    type: "personal"
  },
  {
    holder_name: "Kate",
    amount: 2000,
    type: "business"
  },
  {
    holder_name: "Tony",
    amount: 150,
    type: "personal"
  },
  {
    holder_name: "Sandy",
    amount: 4500,
    type: "business"
  },
]

def number_of_bank_accounts()
  ACCOUNTS.length
end

def first_bank_account_holder
  ACCOUNTS.first[:holder_name]
end

def print_owner_names
  for person in ACCOUNTS
  puts person[:holder_name]
  end 
end

def total_cash_in_bank
  total = 0
  for person in ACCOUNTS
    total += person[:amount]
  end
  #must remember to return a value if using this function in another function, just using 'puts' will display it but return a value of nil
  return total
end

def last_bank_account_holder
  ACCOUNTS.last[:holder_name]
end

def average_account_value
  total_cash_in_bank/number_of_bank_accounts
end

def total_business_cash
  total = 0
  for person in ACCOUNTS
   total += person[:amount] if person.has_value?("business")
  end
  return total
end

def largest_account_holder
  amount = 0
  person_largest = ""
  for person in ACCOUNTS
    if person[:amount] > amount
      person_largest = person[:holder_name]
      amount = person[:amount]
    end
  end
  return person_largest
end

def largest_personal_account
  amount = 0
  person_largest_personal = ""

  for person in ACCOUNTS
    if person[:amount] > amount && person.has_value?("personal")
      person_largest_personal = person[:holder_name]
      amount = person[:amount]
    end
  end
  return person_largest_personal
end


# My own extra functions

def bank_logbook
  puts "Name\t\tAccount Type\t\tBalance"
  puts "------------------------------------------------"
  for person in ACCOUNTS
    puts "#{person[:holder_name]}\t\t#{person[:type]}\t\t#{person[:amount]}" 
  end
end


def balance_check(input_name)
  for person in ACCOUNTS
    if person[:holder_name] == input_name
      return person[:amount] 
    end
  end
end





















