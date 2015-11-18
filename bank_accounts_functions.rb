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
    if person.has_value?("business")
      total += person[:amount]
    end
  end
  return total
end




















