class Bank
  def initialize
    @balance = 0.0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
    else
      puts "Insufficient Balance"
    end
  end

  def check_balance
    puts "Balance: #{@balance}"
  end
end

# Main
bank = Bank.new
loop do
  puts "1. Deposit 2. Withdraw 3. Check 4. Exit"
  choice = gets.chomp.to_i
  case choice
  when 1
    puts "Enter amount to deposit:"
    amount = gets.chomp.to_f
    bank.deposit(amount)
  when 2
    puts "Enter amount to withdraw:"
    amount = gets.chomp.to_f
    bank.withdraw(amount)
  when 3
    bank.check_balance
  when 4
    break
  else
    puts "Invalid choice"
  end
end