require 'yaml'

class BankModel
  attr_accessor :db
  def initialize
    # db_init()
    @db = {customer_id:{}}
    # db_load()
  end

  def db_init
    unless File.exists?('../db/db.yml')
      new_db = File.new('../db/db.yml', 'w+')
      new_db.puts YAML.dump({customer_id:{}})
      new_db.close
    end
  end

  def db_save
    File.write('../db/db.yml', YAML.dump(@db))
  end

  def db_load
    @db = YAML.load(File.read('../db/db.yml'))
  end

  # CUSTOMERS
  def customer_create(name, dob)
    id_number = @db[:customer_id].length + 1
    @db[:customer_id]["#{id_number}"] = {
      name: name,
      id_number: id_number,
      dob: dob,
      total_funds: 0,
      accounts:{}
    }
    # db_save()

    return @db[:customer_id]["#{id_number}"]
  end

  def customer_close(id_number)
    @db[:customer_id].delete("#{id_number}")
    # db_save()
  end

  def customer_find(id_number)
    @db[:customer_id]["#{id_number}"]
  end

  #ACCOUNTS
  def acc_create(id_number, name, type)
    customer = customer_find(id_number)
    acc_number = customer[:accounts].length + 1
    customer[:accounts]["#{acc_number}"] = {
      name: name,
      type: type,
      funds: 0
    }
    # db_save()
  end

  def acc_close(id_number, acc_number)
    customer = customer_find(id_number)
    customer[:accounts].delete("#{acc_number}")
    # db_save()
  end

  def acc_find(id_number, acc_number)
    customer = customer_find(id_number)
    customer[:accounts]["#{acc_number}"]
  end

  def acc_withdraw(id_number, acc_number, amount)
    customer = customer_find(id_number)
    customer[:accounts]["#{acc_number}"][:funds] -= amount
    # db_save()
  end

  def acc_deposit(id_number, acc_number, amount)
    customer = customer_find(id_number)
    customer[:accounts]["#{acc_number}"][:funds] += amount
    # db_save()
  end

  def acc_balance(id_number, acc_number)
    customer = customer_find(id_number)
    customer[:accounts]["#{acc_number}"][:funds]
    # db_save()
  end
  
  
end 






# bank = @db[customer_id][#{id_number}]

#   accounts 
#     money
      
#     customer
#       name 
#       dob 
#       ...
#     sub-accounts
#       money
#       name 
#       amount
#       ...


#   interest rate
#   deposit
#   withdraw

   